<?php 
if(isset($_POST['submit'])){
    include "banco.php";
    $query = "select * from email where id=1";
    $cons = mysqli_query($con, $query);

    while($emailb = mysqli_fetch_array($cons)){
        $email = $emailb['email'];
    }

    $to = $email; // this is your Email address
    $from = $_POST['email']; // this is the sender's Email address
    $first_name = $_POST['first_name'];
    $telefone = $_POST['telefone'];
    $subject = "Mensagem";
    $subject2 = "Cópia da sua mensagem";
    $message = $first_name . " Telefone: " . $telefone . " Enviou o seguinte:" . "\n\n" . $_POST['message'];
    $message2 = "Aqui está uma cópia da sua mensagem" . $first_name . "\n\n" . $_POST['message'];

    $headers = "De:" . $from;
    $headers2 = "Para:" . $to;
    mail($to,$subject,$message,$headers);
    mail($from,$subject2,$message2,$headers2); // sends a copy of the message to the sender
    echo "E-mail enviado, muito obrigado!" . $first_name . ", Entraremos em contato em breve.";
    }
    include "anterior.php";
?>


<div class="formulario">
<form action="" method="post" class="form-horizontal">
<div class="form-group">
    <label>Nome:</label> <input type="text" name="first_name" class="form-control" placeholder="Digite aqui o seu nome" />
</div>
<div class="form-group">
    <label>Telefone:</label>
    <input type="text" name="telefone" placeholder="Digite aqui o seu telefone para contato" class="form-control" />
</div>
<div class="form-group">
    <label>Email:</label>
    <input type="text" name="email" placeholder="Digite aqui o seu E-mail" class="form-control" />
</div>
<div class="form-group">
    <label>Mensagem:</label>
    <textarea rows="5" name="message" cols="30" class="form-control" placeholder="Descreva aqui, o serviço que deseja" /></textarea>
</div>
<button type="submit" class="btn btn-primary">Enviar</button>
</form>
</div>
<?php
    echo "<div class='espaco'></div>";
    include "posterior.php";
?>