import React from 'react';
import moment from 'moment';


class AddAnswer extends React.Component {
  constructor(props) {
    super(props);

    this.state= {
      answer: '',
      aUser: '',
      questionID: this.props.questionID,
      dateAnwSubmitted: '',
      answerIt: false
    }

    this.toggleAnswerIt = this.toggleAnswerIt.bind(this);
    this.handleChangeAnswer = this.handleChangeAnswer.bind(this);
    this.handleChangeAnwUser = this.handleChangeAnwUser.bind(this);
    this.newAnswer = this.newAnswer.bind(this);
  };


  toggleAnswerIt() {
    this.setState({answerIt: !this.state.answerIt})
  }

  handleChangeAnswer(event) {
    this.setState({answer: event.target.value, dateAnwSubmitted: moment()});
  };

  handleChangeAnwUser(event) {
    this.setState({aUser: event.target.value});
  };

  newAnswer() {
    this.props.addAnswer([this.state.questionID, this.state.answer, this.state.aUser, this.state.dateAnwSubmitted]);
    this.toggleAnswerIt();
  };


  render () {
    if (this.state.answerIt) {
      return (
        <>
          <div className="askQuesForm">your answer
            <textarea
              type="text"
              maxLength='255'
              rows='4'
              placeholder="answer"
              onChange={this.handleChangeAnswer}
              className="quesTextBox">
            </textarea>
            <div className="smallGrayText">at least 20 characters</div>
            <textarea
              type="text"
              maxLength='20'
              rows='1'
              placeholder='screen name'
              onChange={this.handleChangeAnwUser}
              className="quesTextBox">
            </textarea>
            <div className="smallGrayText">this name will be displayed with your question</div>
          </div>
          <div className="submitQuesBox">by submitting I agree to the <a href="#">q&a guildelines</a>
            <button className="largeWhiteButton" onClick={this.toggleAnswerIt}>cancel</button>
            <button className="largeRedButton" onClick={this.newAnswer}>submit answer</button>
          </div>
        </>
      )
    } else {
      return (
        <div className="answerIt">
          <button className="answerItButton" onClick={this.toggleAnswerIt}>Answer it</button>
        </div>
      )
    };
  };

}


export default AddAnswer;