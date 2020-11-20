<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
      xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <body bgcolor="BLUE">
                <center><h2>student database</h2></center>
                <center>
                    <table bgcolor="YELLOW" border="7" width="650" height="400">
                        <tr>
                            <th>sno</th>
                            <th>name</th>
                            <th>addr</th>
                            <th>std</th>
                            <th>marks</th>
                        </tr>
                        <xsl:for-each select="student/personal_info">
                            <xsl:sort select="mark"/>
                            <tr>

                                <td><xsl:value-of select="sno"></xsl:value-of></td>
                                <td><xsl:value-of select="name"/></td>
                                <td><xsl:value-of select="addr"/></td>
                                <td><xsl:value-of select="std"/></td>
                                <td><xsl:value-of select="marks"/></td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </center>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>