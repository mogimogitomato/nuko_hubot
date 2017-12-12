# Description:
#   "weather" - tell today's weather.
#
# Notes:
#   weather(YK)

module.exports = (robot) ->
  send = (msg) ->
    request = robot.http("http://api.openweathermap.org/data/2.5/weather?q=Yokohama,jp&appid=APIKEY&units=metric").get()

    stMessage = request (err, res, body) ->
      json = JSON.parse body
      switch json['weather'][0]['main']
        when "Clear"
          weatherName = "晴れ"
        when "Clouds"
          weatherName = "くもり"
        when "Rain"
          weatherName = "雨"
        when "Snow"
          weatherName = "雪"
      icon = json['weather'][0]['icon']
      temp = json['main']['temp']
      temp_max = json['main']['temp_max']
      temp_min = json['main']['temp_min']
      msg.send "今日の天気をお伝えするニャ。\n" +
      "今日の横浜の天気は「" + weatherName + "」ニャ。\n気温:" + temp + "℃ 最高気温："  + temp_max + "℃ 最低気温：" + temp_min + "℃\nhttp://openweathermap.org/img/w/" + icon + ".png"

  robot.hear /今日のお天気/, (msg) ->
    send(msg)
