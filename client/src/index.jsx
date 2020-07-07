import React from 'react';
import ReactDOM from 'react-dom';
import Axios from 'axios';
import $ from 'jquery';
import AboutItem from './components/AboutItem.js';



class About extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      cat: [],
      questions: [],
      answers: [],
      currentCat: '',
      tabSelected: 'Details',

    }

    this.getCat = this.getCat.bind(this);
    this.getQuestions = this.getQuestions.bind(this);
    // this.getAnswers = this.getAnswers.bind(this);
    this.addQuestion = this.addQuestion.bind(this);
    this.addAnswer = this.addAnswer.bind(this);
    this.toggleTabSelected = this.toggleTabSelected.bind(this);

  }

  componentDidMount() {
    this.getCat('Luna');
    this.getQuestions('Luna');
    // this.getAnswers('Luna');

    // Event listeners for entire page on search and click
    $('body').on('click', '.catLink', (e) => {
      this.getCat(e.currentTarget.id);
      this.getQuestions(e.currentTarget.id);
    });
    $('body').on('submit', '.form', (e) => {
      let formatted = e.target[0].value.replace(/(^\w|\s\w)(\S*)/g, (_,m1,m2) => m1.toUpperCase()+m2.toLowerCase());
      this.getCat(formatted);
      this.getQuestions(formatted);
    });
    $('body').on('click', '.catRows', (e) => {
      this.getCat(e.currentTarget.value);
      this.getQuestions(e.currentTarget.value);
    })
  }

// Get request to database for item details
  getCat(catName) {
    Axios.get('/about/cat', {params: {catName}})
      .then((response) => {
        this.setState({cat: response.data[0], currentCat: response.data[0]['catName'], tabSelected: 'Details'});
      })
      .catch(error => {
        console.error('Axios get Cat error', error);
      });
  }

// Get request to database for questions and answers
  getQuestions(catName) {
    Axios.get('/about/questions', {params: {catName}})
      .then((response) => {
        if (response.data[0]['qID'] === null) {
          window.questions = 0;
        } else {
          window.questions = response.data.length;
        }
        this.setState({questions: response.data});
      })
      .catch(error => {
        console.error('Axios get Qs error', error);
      })
  }


// Get request to database for all answers to 1 question
// have not impleted the ability to post multiple answers to 1 question
  // getAnswers(catName) {
  //   Axios.get('/about/answers', {params: {catName}})
  //     .then((response) => {
  //     console.log('answers', response.data);
  //       this.setState({answers: response.data});
  //     })
  //     .catch(error => {
  //       console.error('Axios get As error', error);
  //     })
  // }


// Toggle between header tabs of Details, Shipping&Returns, Q&A
  toggleTabSelected(event) {
    this.setState({
      tabSelected: event.target.name
    })
  }


// Post request to add new question to database with nested get request to update page with new question
  addQuestion(question) {
    Axios.post('/about/question', {question})
      .then(res => {
        this.getQuestions(this.state.currentCat)
      })
      .catch(error => {
        console.error('Axios question post error', error);
      });
  }


// Post request to add answer to database with nested get request to update question with answer
  addAnswer(answer) {
    Axios.post('/about/answer', {answer})
      .then(res => {
        this.getQuestions(this.state.currentCat)
      })
      .catch(error => {
        console.error('Axios answer post error', error);
      });
  }

  render() {
    return (
      <div className="mainBox">
        <h2 className="heading">About this item</h2>
        <div>
          <AboutItem
            cat={this.state.cat}
            tabSelected={this.state.tabSelected}
            toggleTabSelected={this.toggleTabSelected}
            questions={this.state.questions}
            addQuestion={this.addQuestion}
            addAnswer={this.addAnswer}
          />
        </div>
      </div>
    )
  }
}



ReactDOM.render(<About />, document.getElementById('about'));
