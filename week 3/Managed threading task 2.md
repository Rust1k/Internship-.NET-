At https://jsonplaceholder.typicode.com/photos there is a list of pictures as json. Implement downloading images from thumbnailUrl property. For solving this task you should use Threads. As the json parser you can use JObject.Parse method. For file downloading you can use HttpClient class.
It’ll better not to download everything in a row, but do it with throttling (lag) so as not to get a denial of service.

For writing tests read how you can [mock HttpClient](https://gingter.org/2018/07/26/how-to-mock-httpclient-in-your-net-c-unit-tests/)