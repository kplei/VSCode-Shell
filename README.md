# VSCode-Shell

Based on: https://badoption.eu/docs/blog/2023/01/31/code_c2.html

Powershell that generates a .lnk file that downloads a portable version of vscode and starts a tunnel for remote access. Modified to hide the vscode terminal window and install the tunnel as a "service" which allows for peristance.

Change the $post_url variable to url provided by interactsh.com or any web server where you can view incoming requests.
