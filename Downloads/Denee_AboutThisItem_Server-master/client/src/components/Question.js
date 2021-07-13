import React from 'react';
import moment from 'moment';
import Answer from './Answer';


const Question = ({question, addAnswer, answerIt, toggleAnswerIt}) => {

  return (
    <div className="questionsBox">
      <div className="question">Q: {question.question}</div>
      <div className="qUser">{question.qUser}- {moment(question.dateAdded).startOf('minute').fromNow()}</div>
      <Answer
        question={question}
        addAnswer={addAnswer}
        answerIt={answerIt}
        toggleAnswerIt={toggleAnswerIt}
      />
    </div>
  )
}

export default Question;