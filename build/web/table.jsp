<%-- 
    Document   : table
    Created on : 12.04.2012, 15:29:50
    Author     : rainer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<?xml version="1.0" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN"
    "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<jsp:useBean id="wuerfel" class="model.Wuerfel" scope="session"/> 
<jsp:setProperty name="wuerfel" property="*"/>
<html xmlns="http://www.w3.org/1999/xhtml"  xml:lang="de" lang="de">
	<head>
		<title>EWA Mensch &auml;rgere Dich nicht :: Spiel 1</title>
		<meta http-equiv="Content-Type" content="application/xhtml+xml; charset=iso-8859-1"/>
		<meta name="description" content="Das EWA Mensch &auml;rgere Dich nicht, ein Spa&szlig; der niemals endet."/>
		<meta name="keywords" content="Spiel EWA Mensch &auml;rgere Dich nicht"/>
		<meta name="language" content="de-AT"/>
		<link rel="stylesheet" type="text/css" href="styles/screen.css"/>
        <script language="javascript">

<!-- JavaScript Code fuer Browser, die kein Scripting unterstuetzen ausblenden


// JavaScript Funktion zum Anzeigen des Textes
function showText()
{
  alert("Text: " + jsText);
}

// Ende der JavaScript Sektion -->
</script>                            
	</head>
	<body>
		<div id="wrapper">
			<div id="header">
				<div id="teaser"></div>
				<div id="logo"></div>
				<h1>EWA Mensch &auml;rgere Dich nicht</h1>
			</div>
			<ul class="accessibility">
				<li><a href="#navigation" accesskey="2">Navigation</a></li>
				<li><a href="#board" accesskey="0">Spielbrett</a></li>
				<li><a href="#dicearea" accesskey="1">W&uuml;rfel</a></li>
				<li><a href="#info_area" accesskey="3">Spielstand</a></li>
			</ul>
			<div id="body">
				<div id="navigation">
					<h2 class="accessibility">Navigation</h2>
					<ul>
						<li><a href="#">Userdaten &auml;ndern</a></li>
						<li><a href="#">Zur&uuml;ck zur Lounge</a></li>
						<li><a href="#">Ausloggen</a></li>
					</ul>
				</div>
				<hr class="accessibility" />				
				<div id="info_area">
                                        <!-- TODO Place Restart Button -->
                                        <input type="submit" value="Restart Game" accesskey="r"/>
                                        <h2>Spielinformationen</h2>
					<table class="game_info" summary="Diese Tabelle zeigt Informationen zum aktuellen Spiel">
						<tbody>
							<tr class="accessibility">
								<th>Information</th>
								<th>Wert</th>
							</tr>
							<tr>
								<th>Anzahl Spieler</th>
								<td>2</td>
							</tr>
							<tr>
								<th>F&uuml;hrender</th>
								<td>mehrere</td>
							</tr>
							<tr>
								<th>Aktuelle Runde</th>
								<td>1</td>
							</tr>
							<tr>
								<th>Zeit</th>
								<td>0 min, 0 sec</td>
							</tr>
						</tbody>
					</table>
					<h2>Spieler</h2>
					<table class="game_info" summary="Diese Tabelle listet die Namen der Spieler auf">
						<tbody>
							<tr class="accessibility">
								<th>Spielernummer</th>
								<th>Spielername</th>
							</tr>
							<tr>
								<th>Spieler 1</th>
								<td>Super Mario</td>
							</tr>
							<tr>
								<th>Spieler 2</th>
								<td>Bowser</td>
							</tr>
							<tr>
								<th>Spieler 3</th>
								<td>Luigi</td>
							</tr>
							<tr>
								<th>Spieler 4</th>
								<td>Yoshi</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div id="dicearea">
					<hr class="accessibility" />
					<h2 class="accessibility">W&uuml;rfel</h2>
					<span title='aktueller Spieler'>Super Mario</span>
                                        <% wuerfel.wuerfeln(); %>
                                        <img name="wuerfel" 
                                            title="<%= wuerfel.getTitle() %>" 
                                            src="<%= wuerfel.getImage() %>" 
                                            alt="<%= wuerfel.getAlt() %>"
                                            onclick="alert('Hallo')"/>
                                        <!--<img name="wuerfel" title="W&uuml;rfel Zahl 1" src="img/wuerfel1.png" alt="W&uuml;rfel Zahl 1" onclick="alert('Würfeln');")"/>-->
				</div>
				<div id="play_area">
					<hr class="accessibility" />
					<div id="board">
						<h2 class="accessibility">Spielbrett</h2>
						<div class="fields">
							<h3 class="accessibility">Spielfelder</h3>
							<ol title="Spielfelder">
								<li><img id='field1' src='img/field1.png' alt='Feld 1: erstes Feld Spieler 1' title='Feld 1: erstes Feld Spieler 1' /></li>									
								<li><img id='field2' src='img/field.png' alt='Feld 2' title='Feld 2' /></li>
								<li><img id='field3' src='img/field.png' alt='Feld 3' title='Feld 3' /></li>
								<li><img id='field4' src='img/field.png' alt='Feld 4' title='Feld 4' /></li>
								<li><img id='field5' src='img/field.png' alt='Feld 5' title='Feld 5' /></li>
								<li><img id='field6' src='img/field.png' alt='Feld 6' title='Feld 6' /></li>
								<li><img id='field7' src='img/field.png' alt='Feld 7' title='Feld 7' /></li>
								<li><img id='field8' src='img/field.png' alt='Feld 8' title='Feld 8' /></li>
								<li><img id='field9' src='img/field.png' alt='Feld 9' title='Feld 9' /></li>
								<li><img id='field10' src='img/field.png' alt='Feld 10: letztes Feld Spieler 2' title='Feld 10: letztes Feld Spieler 2' /></li>
								<li><img id='field11' src='img/field2.png' alt='Feld 11: erstes Feld Spieler 2' title='Feld 11: erstes Feld Spieler 2' /></li>
								<li><img id='field12' src='img/field.png' alt='Feld 12' title='Feld 12' /></li>
								<li><img id='field13' src='img/field.png' alt='Feld 13' title='Feld 13' /></li>
								<li><img id='field14' src='img/field.png' alt='Feld 14' title='Feld 14' /></li>
								<li><img id='field15' src='img/field.png' alt='Feld 15' title='Feld 15' /></li>
								<li><img id='field16' src='img/field.png' alt='Feld 16' title='Feld 16' /></li>
								<li><img id='field17' src='img/field.png' alt='Feld 17' title='Feld 17' /></li>
								<li><img id='field18' src='img/field.png' alt='Feld 18' title='Feld 18' /></li>
								<li><img id='field19' src='img/field.png' alt='Feld 19' title='Feld 19' /></li>
								<li><img id='field20' src='img/field.png' alt='Feld 20: letztes Feld Spieler 3' title='Feld 20: letztes Feld Spieler 3' /></li>
								<li><img id='field21' src='img/field3.png' alt='Feld 21: erstes Feld Spieler 3' title='Feld 21: erstes Feld Spieler 3' /></li>
								<li><img id='field22' src='img/field.png' alt='Feld 22' title='Feld 22' /></li>
								<li><img id='field23' src='img/field.png' alt='Feld 23' title='Feld 23' /></li>
								<li><img id='field24' src='img/field.png' alt='Feld 24' title='Feld 24' /></li>
								<li><img id='field25' src='img/field_player3.png' alt='Feld 25: Spieler 3' title='Feld 25: Spieler 3' /></li>
								<li><img id='field26' src='img/field.png' alt='Feld 26' title='Feld 26' /></li>
								<li><img id='field27' src='img/field.png' alt='Feld 27' title='Feld 27' /></li>
								<li><img id='field28' src='img/field.png' alt='Feld 28' title='Feld 28' /></li>
								<li><img id='field29' src='img/field.png' alt='Feld 29' title='Feld 29' /></li>
								<li><img id='field30' src='img/field.png' alt='Feld 30: letztes Feld Spieler 4' title='Feld 30: letztes Feld Spieler 4' /></li>
								<li><img id='field31' src='img/field4_player4.png' alt='Feld 31: erstes Feld Spieler 4: Spieler 4' title='Feld 31: erstes Feld Spieler 4: Spieler 4' /></li>
								<li><img id='field32' src='img/field.png' alt='Feld 32' title='Feld 32' /></li>
								<li><img id='field33' src='img/field.png' alt='Feld 33' title='Feld 33' /></li>
								<li><img id='field34' src='img/field.png' alt='Feld 34' title='Feld 34' /></li>
								<li><img id='field35' src='img/field.png' alt='Feld 35' title='Feld 35' /></li>
								<li><img id='field36' src='img/field.png' alt='Feld 36' title='Feld 36' /></li>
								<li><img id='field37' src='img/field.png' alt='Feld 37' title='Feld 37' /></li>
								<li><img id='field38' src='img/field.png' alt='Feld 38' title='Feld 38' /></li>
								<li><img id='field39' src='img/field.png' alt='Feld 39' title='Feld 39' /></li>
								<li><img id='field40' src='img/field.png' alt='Feld 40: letztes Feld Spieler 1' title='Feld 40: letztes Feld Spieler 1' /></li>
							</ol>
							<h3 class="accessibility">Starth&auml;user</h3>
							<ol title="Starthaus Spieler 1">
								<li><img id='field41' src='img/field1.png' alt='Feld 41: Startfeld Spieler 1' title='Feld 41: Startfeld Spieler 1' /></li>
								<li><img id='field42' src='img/field1.png' alt='Feld 42: Startfeld Spieler 1' title='Feld 42: Startfeld Spieler 1' /></li>
								<li><img id='field43' src='img/field1_player1.png' alt='Feld 43: Startfeld Spieler 1: Spieler 1' title='Feld 43: Startfeld Spieler 1: Spieler 1' /></li>
								<li><img id='field44' src='img/field1.png' alt='Feld 44: Startfeld Spieler 1' title='Feld 44: Startfeld Spieler 1' /></li>
							</ol>
							<ol title="Starthaus Spieler 2">
								<li><img id='field45' src='img/field2_player2.png' alt='Feld 45: Startfeld Spieler 2: Spieler 2' title='Feld 45: Startfeld Spieler 2: Spieler 2' /></li>
								<li><img id='field46' src='img/field2.png' alt='Feld 46: Startfeld Spieler 2' title='Feld 46: Startfeld Spieler 2' /></li>
								<li><img id='field47' src='img/field2.png' alt='Feld 47: Startfeld Spieler 2' title='Feld 47: Startfeld Spieler 2' /></li>
								<li><img id='field48' src='img/field2.png' alt='Feld 48: Startfeld Spieler 2' title='Feld 48: Startfeld Spieler 2' /></li>
							</ol>
							<ol title="Starthaus Spieler 3">	
								<li><img id='field49' src='img/field3.png' alt='Feld 49: Startfeld Spieler 3' title='Feld 49: Startfeld Spieler 3' /></li>
								<li><img id='field50' src='img/field3.png' alt='Feld 50: Startfeld Spieler 3' title='Feld 50: Startfeld Spieler 3' /></li>
								<li><img id='field51' src='img/field3.png' alt='Feld 51: Startfeld Spieler 3' title='Feld 51: Startfeld Spieler 3' /></li>
								<li><img id='field52' src='img/field3.png' alt='Feld 52: Startfeld Spieler 3' title='Feld 52: Startfeld Spieler 3' /></li>
							</ol>
							<ol title="Starthaus Spieler 4">	
								<li><img id='field53' src='img/field4.png' alt='Feld 53: Startfeld Spieler 4' title='Feld 53: Startfeld Spieler 4' /></li>
								<li><img id='field54' src='img/field4.png' alt='Feld 54: Startfeld Spieler 4' title='Feld 54: Startfeld Spieler 4' /></li>
								<li><img id='field55' src='img/field4.png' alt='Feld 55: Startfeld Spieler 4' title='Feld 55: Startfeld Spieler 4' /></li>
								<li><img id='field56' src='img/field4.png' alt='Feld 56: Startfeld Spieler 4' title='Feld 56: Startfeld Spieler 4' /></li>
							</ol>
							<h3 class="accessibility">Zielh&auml;user</h3>
							<ol title="Zielhaus Spieler 1">
								<li><img id='field57' src='img/field1.png' alt='Feld 57: Zielfeld Spieler 1' title='Feld 57: Zielfeld Spieler 1' /></li>
								<li><img id='field58' src='img/field1.png' alt='Feld 58: Zielfeld Spieler 1' title='Feld 58: Zielfeld Spieler 1' /></li>
								<li><img id='field59' src='img/field1.png' alt='Feld 59: Zielfeld Spieler 1' title='Feld 59: Zielfeld Spieler 1' /></li>
								<li><img id='field60' src='img/field1.png' alt='Feld 60: Zielfeld Spieler 1' title='Feld 60: Zielfeld Spieler 1' /></li>
							</ol>
							<ol title="Zielhaus Spieler 2">	
								<li><img id='field61' src='img/field2.png' alt='Feld 61: Zielfeld Spieler 2' title='Feld 61: Zielfeld Spieler 2' /></li>
								<li><img id='field62' src='img/field2.png' alt='Feld 62: Zielfeld Spieler 2' title='Feld 62: Zielfeld Spieler 2' /></li>
								<li><img id='field63' src='img/field2.png' alt='Feld 63: Zielfeld Spieler 2' title='Feld 63: Zielfeld Spieler 2' /></li>
								<li><img id='field64' src='img/field2.png' alt='Feld 64: Zielfeld Spieler 2' title='Feld 64: Zielfeld Spieler 2' /></li>
							</ol>
							<ol title="Zielhaus Spieler 3">		
								<li><img id='field65' src='img/field3.png' alt='Feld 65: Zielfeld Spieler 3' title='Feld 65: Zielfeld Spieler 3' /></li>
								<li><img id='field66' src='img/field3.png' alt='Feld 66: Zielfeld Spieler 3' title='Feld 66: Zielfeld Spieler 3' /></li>
								<li><img id='field67' src='img/field3.png' alt='Feld 67: Zielfeld Spieler 3' title='Feld 67: Zielfeld Spieler 3' /></li>
								<li><img id='field68' src='img/field3.png' alt='Feld 68: Zielfeld Spieler 3' title='Feld 68: Zielfeld Spieler 3' /></li>
							</ol>
							<ol title="Zielhaus Spieler 4">		
								<li><img id='field69' src='img/field4.png' alt='Feld 69: Zielfeld Spieler 4' title='Feld 69: Zielfeld Spieler 4' /></li>
								<li><img id='field70' src='img/field4.png' alt='Feld 70: Zielfeld Spieler 4' title='Feld 70: Zielfeld Spieler 4' /></li>
								<li><img id='field71' src='img/field4.png' alt='Feld 71: Zielfeld Spieler 4' title='Feld 71: Zielfeld Spieler 4' /></li>
								<li><img id='field72' src='img/field4.png' alt='Feld 72: Zielfeld Spieler 4' title='Feld 72: Zielfeld Spieler 4' /></li>
							</ol>
						</div>
						<div class="clearer"></div>  
						<div id="infogegner">W&uuml;rfelergebnis Computer: 3</div>
					</div>
				</div>				
			</div>
			<div id="footer">
				<p>&copy; 2012 EWA Mensch &auml;rgere Dich nicht.</p>
			</div>
        </div>
    </body>
</html>                      
