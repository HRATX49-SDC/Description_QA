import React from 'react';
import moment from 'moment';


class AskQuestion extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      question: '',
      qUser: '',
      catID: this.props.catID,
      dateQuesSubmitted: '',
      askQuestion: false
    }

    this.toggleAskQuestion = this.toggleAskQuestion.bind(this);
    this.handleChangeQues = this.handleChangeQues.bind(this);
    this.handleChangeUser = this.handleChangeUser.bind(this);
    this.newQuestion = this.newQuestion.bind(this);

  };

  toggleAskQuestion() {
    this.setState({askQuestion: !this.state.askQuestion})
  }

  handleChangeQues(event) {
    this.setState({question: event.target.value, dateQuesSubmitted: moment()});
  };

  handleChangeUser(event) {
    this.setState({qUser: event.target.value});
  };

  newQuestion() {
    this.props.addQuestion([this.state.catID, this.state.question, this.state.qUser, this.state.dateQuesSubmitted]);
    this.toggleAskQuestion();
  };

  render() {
    if (this.state.askQuestion) {
      return (
        <>
          <div className="askQuesForm">Your question
            <textarea
              type="text"
              maxLength='255'
              rows='4'
              placeholder="question"
              onChange={this.handleChangeQues}
              className="quesTextBox">
            </textarea>
            <div className="smallGrayText">at least 20 characters</div>
            <textarea
              type="text"
              maxLength='20'
              rows='1'
              placeholder='screen name'
              onChange={this.handleChangeUser}
              className="quesTextBox">
            </textarea>
            <div className="smallGrayText">this name will be displayed with your question</div>
          </div>
          <div className="submitQuesBox">by submitting I agree to the <a href="#">q&a guildelines</a>
            <button className="largeWhiteButton" onClick={this.toggleAskQuestion}>cancel</button>
            <button className="largeRedButton" onClick={this.newQuestion}>submit question</button>
          </div>
        </>
      )
    } else {
      return (
        <button className="largeRedButton" onClick={this.toggleAskQuestion}>Ask a question</button>
      )
    };
  };

}


export default AskQuestion;


