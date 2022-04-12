For this exercise you'll need to create a GitHub access token (instruction https://help.github.com/articles/creating-a-personal-access-token-for-the-command-line/#creating-a-token) so that you can access the GitHub GraphQL endpoint. Select the following permissions for your GitHub Access Token:
 - repo:status
 - public_repo  

Save the access token in a safe place so you can use it to gain access to the GitHub API endpoint.
In the following program you should place it in GitHubKey variable.

Look at the app in the folder `IAsyncEnumerable`. So this console application is used for asynchronously downloading the latest 250 Issues (10 pages) from the https://github.com/dotnet/docs repository via the https://developer.github.com/v4/ interface. This code is working not very well. If you run app you'll see progress reported for each page returned from GitHub. You can observe a noticeable pause before GitHub returns each new page of issues. Finally, the issues are displayed only after all 10 pages have been retrieved from GitHub.

Rewrite the application using IAsyncEnumerable. Issues should be handled in an asynchronous foreach loop during receiving next data.