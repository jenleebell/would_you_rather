Answer.create!([
  {content: "Time", question_id: 1, votes: 0},
  {content: "Money", question_id: 1, votes: 0},
  {content: "Animals", question_id: 2, votes: 0},
  {content: "Foreign Languages", question_id: 2, votes: 0},
  {content: "Lottery", question_id: 3, votes: 0},
  {content: "Twice as long", question_id: 3, votes: 0}
])
Question.create!([
  {content: "Would you rather have more time or more money?", user_id: nil},
  {content: " Would you rather be able to talk with the animals or speak all foreign languages?", user_id: nil},
  {content: "Would you rather win the lottery or live twice as long?", user_id: nil}
])
