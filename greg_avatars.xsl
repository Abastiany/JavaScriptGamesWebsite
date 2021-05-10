<?xml version="1.0"?>
<!--Example Greg Gambits Avatars: xsl file -->
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" docype-system="about:legacy-compat"/>
    <xsl:template match="/">
	<html>
	<head>
		<meta charset = "utf-8"/>
		<link rel = "stylesheet" type = "text/css" href = "styles/greg.css"/>
		<script type="text/javascript" src="gregAvatars.js"></script>
		<title>Greg's Gambits | The Avatars</title>
	</head>
	<body>
	<div id="container" style="width: 900px;">
 <img src="../images/card-1738844_1920.jpg" class="floatleft" id="headerpic" />
 <h1 align="center">Avatar Options</h1>
<div style ="clear:both;"></div>  
<nav id="nav_menu">
    <ul>
        <li><a href="index.html" class="current">Home</a></li>
        <li><a href="greg.html">About Greg</a></li>
        <li><a href="play_games.html">Play a Game</a></li>
        <li><a href="sign.html">Sign In</a></li>
        <li><a href="contact.html">Contact Us</a></li>
        <li><a href="aboutyou.html">Tell Greg About You</a></li>
    </ul>
</nav>
<div id="content">
		<table border = "1" align = "center" width = "100%" cellpadding = "5">
			<tr>
				<th>Avatar</th>
				<th>Special Powers</th>
				<th>Home Base</th>
				<th>Accessories</th>
				<th>Partner</th>
			</tr>
		<!-- insert each avatar's information into a table row -->
		<xsl:for-each select = "/greg/avatar"
                      xmlns:bunny = 'http://greg.com/bunny'
                      xmlns:princess = 'http://greg.com/princess'
                      xmlns:ghost = 'http://greg.com/ghost'
                      xmlns:wizard = 'http://greg.com/wizard'
                      xmlns:elf = 'http://greg.com/elf'>
            <tr>
                <td><xsl:value-of select = "name" /></td>
                <td><xsl:value-of select = "powers" /></td>
                <td><xsl:value-of select = "home" /></td>
                <td><xsl:value-of select = "carry" /></td>
                <td><xsl:value-of select = "partner" /></td>
            </tr>
        </xsl:for-each>
		<tr>
			<td colspan = "5">Select an avatar to view more details.</td>
		</tr>
		<tr>
			<!-- place buttons and images here and call appropriate functions -->
            <td align="center"><img src="images/bunny.jpg" /><br />
                <input type="button" id="bunny" value="Bunny Details" onclick="getMore('bunny')" /></td>
            <td align="center"><img src="images/princess.jpg" /><br />
                <input type="button" id="princess" value="Princess Details" onclick="getMore('princess')" /></td>
            <td align="center"><img src="images/ghost.jpg" /><br />
                <input type="button" id="ghost" value="Ghost Details" onclick="getMore('ghost')" /></td>
            <td align="center"><img src="images/wizard.jpg" /><br />
                <input type="button" id="wizard" value="Wizard Details" onclick="getMore('wizard')" /></td>
            <td align="center"><img src="images/elf.jpg" /><br />
                <input type="button" id="elf" value="Elf Details" onclick="getMore('elf')" /></td>
		</tr>
		<tr>
			<td id = "details" colspan = "5">Details</td>
		</tr>
		</table>
	</div>
</div>
	</body>
</html>
</xsl:template>
</xsl:stylesheet>

