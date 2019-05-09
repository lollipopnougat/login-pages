$ws = New-Object -ComObject WScript.Shell
function Creat-Frontend {
	if (!(Test-Path js)) {
		mkdir js
	}
	else {
		$ws.popup("已经存在名为 js 的文件夹！", 0, "...")
	}
	if (!(Test-Path css)) {
		mkdir css
	}
	else {
		$ws.popup("已经存在名为 css 的文件夹！", 0, "...")
	}
	if (!(Test-Path index.html)) {
		$content = @'
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Document</title>
</head>
<body>
	<p>Hello,World!</p>
</body>
</html>
'@
		sc $content  index.html -Encoding UTF8
	}
	else {
		$ws.popup("已经存在名为 index.html 的HTML文件！", 0, "...")
	}
	
}
$wsr = $ws.popup("将会在此文件夹下新建css/js两个文件夹`n然后创建一个index.html并导入H5模板，确定？", 0, "请确认", 4 + 32)
if ($wsr -eq 6) {
	Creat-Frontend
	$ws.popup("执行完成", 0, "!")
}
else {
	$ws.popup("行吧", 0, "...")
}


