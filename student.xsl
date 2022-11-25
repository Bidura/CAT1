<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
<xsl:template match="/College">
<html>
<body>
    <h1>STUDENT MANAGEMENT SYSTEM</h1>
<table border="1">
<tr>
    <th>ID</th>
    <th>NAME</th>
    <th>COURSE</th>
    <th>SEMESTER</th>
    <th>SUB1</th>
    <th>SUB2</th>
    <th>SUB3</th>
    <th>TOTAL</th>
    <th>AVG</th>
    <th>Grade</th>
</tr>

    <xsl:for-each select="Student">
        <tr>
            <td><xsl:value-of select="//Student/id"/></td>
            <td><xsl:value-of select="Stu-name"/></td>
            <td><xsl:value-of select="Stu-Course"/></td>
            <td><xsl:value-of select="Stu-sem"/></td>
            <td><xsl:value-of select="Stu-Sub1"/></td>
            <td><xsl:value-of select="Stu-Sub2"/></td>
            <td><xsl:value-of select="Stu-Sub3"/></td>
            <td><xsl:value-of select="Stu-Total"/></td>
            <td><xsl:value-of select="Stu-Avg"/></td>
            <td><xsl:choose>
                <xsl:when test="Stu-Avg &gt;= 90" >
                    <h3>Excellent</h3>
                </xsl:when> 
                <xsl:when test="Stu-Avg &gt;= 80 and Stu-Avg &lt;= 89" >
                    <h3>Distinction</h3>
                </xsl:when>
                <xsl:when test="Stu-Avg &gt;= 70 and Stu-Avg &lt;= 79" >
                    <h3>First Class with Distinction</h3>
                </xsl:when>
                <xsl:otherwise >
                    <h3>First Class</h3>
                </xsl:otherwise>

                </xsl:choose>
            </td>

        </tr>
    </xsl:for-each>



</table>


</body>


</html>

</xsl:template>
</xsl:stylesheet>
