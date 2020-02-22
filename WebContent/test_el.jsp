<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Test des expressions EL</title>
</head>
<body>
	<p>
		<!-- Logiques sur des booléens -->
		${ true && true } <br />
		<!-- Affiche true -->
		${ true && false } <br />
		<!-- Affiche false -->
		${ !true || false } <br />
		<!-- Affiche false -->
		<br>
		<!-- Calculs arithmétiques -->
		${ 10 / 4 } <br />
		<!-- Affiche 2.5 -->
		${ 10 mod 4 } <br />
		<!-- Affiche le reste de la division entière, soit 2 -->
		${ 10 % 4 } <br />
		<!-- Affiche le reste de la division entière, soit 2 -->
		${ 6 * 7 } <br />
		<!-- Affiche 42 -->
		${ 63 - 8 } <br />
		<!-- Affiche 55 -->
		${ 12 / -8 } <br />
		<!-- Affiche -1.5 -->
		${ 7 / 0 } <br />
		<!-- Affiche Infinity -->
		<br>
		<!--  Comparaison de chaînes de caractères -->
		${ 'a' < 'b' } <br />
		<!-- Compare les caractères 'a' et 'b'. Le caractère 'a' étant bien situé avant le caractère 'b' dans l'alphabet ASCII, cette EL affiche true. -->
		${ 'hip' gt 'hit' } <br />
		<!-- Compare les chaînes 'hip' et 'hit'. Puisque 'p' < 't', cette EL affiche false. -->
		${ 'a' < 'b' && 'hip' gt 'hit' } <br />
		<!-- Compare les caractères 'a' et 'b', puis les chaînes 'hip' et 'hit'. Puisque le premier test renvoie true et le second false, le résultat est false. -->
		${ 6 * 7 == 48 } <br />
		<!-- Compare le résultat d'un calcul à une valeur fixe. Ici, 6 x 7 vaut 42 et non pas 48, le résultat est false. -->
		<br>
		<!-- Vérifications si vide ou null -->
		${ empty 'test' } <br />
		<!-- La chaîne testée n'est pas vide, le résultat est false -->
		${ empty '' } <br />
		<!-- La chaîne testée est vide, le résultat est true -->
		${ !empty '' } <br />
		<!-- La chaîne testée est vide, le résultat est false -->
		<br>
		<!-- Conditions ternaires -->
		${ true ? 'vrai' : 'faux' } <br />
		<!-- Le booléen testé vaut true, vrai est affiché -->
		${ 'a' > 'b' ? 'oui'  : 'non' } <br />
		<!-- Le résultat de la comparaison vaut false, non est affiché -->
		${ empty 'test' ? 'vide' : 'non  vide'  } <br />
		<!-- La chaîne testée n'est pas vide, non vide est affiché -->
		<br>
        <!-- Initialisation d'un bean de type Coyote avec une action standard, pour l'exemple : -->
        <jsp:useBean id="coyote" class="com.sdzee.beans.Coyote" />
        <!-- Initialisation de sa propriété 'prénom' : -->
        <jsp:setProperty name="coyote" property="prenom" value="Wile E."/>
        <!-- Et affichage de sa valeur : -->
        <jsp:getProperty name="coyote" property="prenom" /> <br>
        ${ coyote.prenom }
	</p>
</body>
</html>