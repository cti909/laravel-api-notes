<!DOCTYPE html>
<html>

<head>
    <title>Xác thực email</title>
</head>

<body>
    <h2>Xác thực email</h2>
    <p>Xin chào {{ $user->name }},</p>
    <p>Mã OTP của bạn là: <strong>{{ $otp }}</strong></p>
</body>

</html>
