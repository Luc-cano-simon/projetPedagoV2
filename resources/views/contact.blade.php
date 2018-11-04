@extends('layout2')
			
@section('contact')
		<!-- formulaire contact -->
		

			<h1> Contact </h1> 

			<form action="contact" method="post" >
				<div class="zou">

				@csrf

				<fieldset>
					<legend>	<img alt="logo" src="css/img/maison.gif" width="130px" /> </legend>

					<p> Contactez-nous : </p>
                   <p>
					<select name="type">
						<option name="type" value="Monsieur">Monsieur</option>
						<option name="type" value="Madame">Madame</option>
						<option name="type" value="Mademoiselle">Mademoiselle</option>

					</select>
                   </p>
                   <p>
					<label for="num"> Nom *  </label>
				</p>
					<input type="num" name="nom" size="20" 
					maxlength="40" placeholder="Entrez votre Nom"   />
                   <p>
					<label for="email"> Mail *  </label>
				</p>
					<input type="mail" name="mail" size="20" 
					maxlength="40" placeholder="Entrez votre E-mail"  id="email" />
                  <p>

					<label for="comments"> Message </label>
				</p>
					<textarea name="message" id="comments" cols="30" rows="4">
					</textarea>

					<p>
						<input name="submit" type="submit" value="Envoyer" />
						<input type="reset" value="Annuler" />
					</p>
				</form>
			</fieldset>
	</div>
@endsection('contact')





		