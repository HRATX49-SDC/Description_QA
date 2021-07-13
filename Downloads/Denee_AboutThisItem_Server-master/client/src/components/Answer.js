import React from 'react';
import moment from 'moment';
import AddAnswer from './AddAnswer';

const Answer = ({question, addAnswer, answerIt, toggleAnswerIt}) => {

  if (question.answer === null) {
    return (
      <AddAnswer
      questionID={question.qID}
        addAnswer={addAnswer}
        answerIt={answerIt}
        toggleAnswerIt={toggleAnswerIt}
      />
    )
  } else {
    return (
      <div className="answerBox">
        <div className="answerA">A:
          <div className="answer">{question.answer}</div>
        </div>
        <div className="aUser">{question.aUser}- {moment(question.anwDateAdded).startOf('minute').fromNow()}
          <div className="helpful">
            <a href="#" className="helpNotReport">Helpful (0)</a>
            <a href="#" className="helpNotReport">Not helpful (0)</a>
            <a href="#" className="helpNotReport">Report</a>
          </div>
        </div>
      </div>
    )
  }
}

export default Answer;