# About me

- Name: Serhii
- My blog: [dev.to/serhii_korol](https://dev.to/serhii_korol_ab7776c50dba)
- Email: [korols83@mail.com](mailto:korols83@mail.com)
- Software Engineer | .NET lover | Experimenter | Author 🇺🇦

## Today's Weather Forecast in Lviv

{{ with $todayWeather := index .Weathers 0 }}

`{{ $todayWeather.City }}, {{$todayWeather.Country }} - {{ formatDate $todayWeather.StartTime $todayWeather.Timezone }}`

<img src="{{ $todayWeather.Icon}}"/>

{{ $todayWeather.Condition }}

{{template "hourly-table" $todayWeather.HourlyWeathers}}

{{- end }}

<div align="right">

*Updated at: {{formatTime .UpdatedAt}} - by **[huantt/weather-forecast](https://github.com/huantt/weather-forecast)***

</div>