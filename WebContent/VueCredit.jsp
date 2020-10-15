<%@page import="web.CreditModel"%><!-- on a reccuperer le model -->
<%
CreditModel mod=(CreditModel)request.getAttribute("mod");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Simulateur Credit</title>
<link rel="stylesheet" type="textt/css" href="<%=request.getContextPath()%>/css/style.css">
</head>
<body>
	<div>
		<form action="Controller.java" method="post">
			<table>
				<tr>
					<td> Montant :</td>
					<td> <input type="text" name="montant" value=<%=mod.getMontant() %>></td>
					<td>DHM</td>
				</tr>
				<tr>
					<td>Durée :</td>
					<td> <input type="text" name="duree" value=<%=mod.getDuree()%>></td>
					<td>Mois</td>
				</tr>
				<tr>
					<td> Taux :</td>
					<td> <input type="text" name="taux" value=<%=mod.getTaux() %>></td>
					<td>%</td>
				</tr>
				<tr>
					<td>
						<input type="submit" value="calculer">
					</td>
				</tr>
			</table>
		
		</form>
	</div>
	<div>
		<table>
			<tr>
				<td>Mensualité:</td>
				<td><%=mod.getMensualite()%></td>
				<td>DHM</td>
			</tr>
		</table>
	</div>
</body>
</html>