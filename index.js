const express = require("express");
const app = express();

app.get( '/hello' , function(req,res){
  // 変数sampleに"こんにちは"という文字列を代入する
  let sample = "こんにちは"
  // 変数sampleに代入された値をブラウザに表示する
  res.send(`<p>TestText${sample}</p>`);
});

app.listen(3000, function(){
  console.log("Listening on localhost port 3000")
});