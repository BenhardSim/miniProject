<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Login</title>
        <link rel="stylesheet" href="./gaya.css" />
        
	
</head>
<body>
	<div class="container">

		<div class="row">
			<div class="col-md-4 offset-md-4">

				<div class="card mt-5">
					<div class="card-title text-center">
						<h1>LOGIN</h1>
                        <br>
					</div>
					<div class="card-body">
						<form action="process.php" method="post" class="login-email">
							<div class="input-group">
								<label for="email">Email:</label>
								<input type="text" name="email" class="form-control" id="email" aria-describedby="email" placeholder="Email">
							</div>
                            <br>
							<div class="input-group">
								<label for="password">Password:</label>
								<input type="password" name="password" class="form-control" id="password" placeholder="Password">
							</div>
                            <br>
							<button type="submit" class="btn btn-primary">Submit</button>
						</form>

					</div>
				</div>
			</div>

		</div>

	</div>
</body>