$ws = New-Object -ComObject WScript.Shell
function Creat-Frontend {
	if (!(Test-Path js)) {
		mkdir js
	}
	else {
		$ws.popup("�Ѿ�������Ϊ js ���ļ��У�", 0, "...")
	}
	if (!(Test-Path css)) {
		mkdir css
	}
	else {
		$ws.popup("�Ѿ�������Ϊ css ���ļ��У�", 0, "...")
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
		$ws.popup("�Ѿ�������Ϊ index.html ��HTML�ļ���", 0, "...")
	}
	
}
$wsr = $ws.popup("�����ڴ��ļ������½�css/js�����ļ���`nȻ�󴴽�һ��index.html������H5ģ�壬ȷ����", 0, "��ȷ��", 4 + 32)
if ($wsr -eq 6) {
	Creat-Frontend
	$ws.popup("ִ�����", 0, "!")
}
else {
	$ws.popup("�а�", 0, "...")
}


