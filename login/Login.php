<?php

session_start();
require_once('db_login.php');


if (isset($_POST["submit"])){
    $valid = TRUE; 
    
    $email = test_input($_POST['email']);
    if ($email == ''){
        $error_email = "Email harus diisi";
        $valid = FALSE;
    } else if (!filter_var($email, FILTER_VALIDATE_EMAIL)){
        $error_email = "Format email tidak valid";
        $valid = FALSE;
    }
    
    $password = test_input($_POST['password']);
    if ($password == ''){
        $error_password = "Password harus diisi";
        $valid = FALSE;
    }

    
    if ($valid){
        
        $query = " SELECT * FROM tb_admin WHERE Email='".$email."' AND Password='".$password."' ";
        
        $result = $db->query($query);
        if (!$result){
            die ("Could not query the database: <br />". $db->error);
        } else{
            if ($result->num_rows>0){ 
                $_SESSION['username'] = $email;
                header('Location: search_penduduk.php');
                exit;
            }else{ 
                echo '<span class="error">Combination of username and password are not correct.</span>';
            }
        }
        
        $db->close();
    }
}
?>
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
                        <form class="login-email" method="POST" autocomplete="on" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
							<div class="input-group">
								<label for="email">Email:</label>
								<input type="email" class="form-control" id="email" name="email" size="30" placeholder="Email" value="<?php if(isset($email)) echo $email;?>">
                                <div class="text-danger"><?php if(isset($error_email)) echo $error_email;?></div>
							</div>
                            <br>
							<div class="input-group">
								<label for="password">Password:</label>
                                <input type="password" class="form-control" id="password" name="password" size="30" placeholder="Password" value="">
                                <div class="text-danger"><?php if(isset($error_password)) echo $error_password;?></div>
							</div>
                            <br>
							<button type="submit" class="btn btn-primary" name="submit" value="submit">Submit</button>
						</form>

					</div>
				</div>
			</div>

		</div>

	</div>

  </body>
</html>
