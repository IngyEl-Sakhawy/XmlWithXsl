<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
<xsl:template match="/">
    <html>
      <head>
        <title>Employee Details</title>
        <style>
          table {
            border-collapse: collapse;
            width: 100%;
          }
          th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
          }
          th {
            background-color: #f2f2f2;
          }
        </style>
      </head>
      <body>
        <h2>Employee Details</h2>
        <table>
          <tr>
            <th>Name</th>
            <th>Email</th>
            <th>Phone (Home)</th>
            <th>Phone (Work)</th>
            <th>Phone (Emergency)</th>
            <th>Street</th>
            <th>Building Number</th>
            <th>Region</th>
            <th>City</th>
            <th>Country</th>
          </tr>
          <xsl:for-each select="Employees/emp">
            <tr>
              <td><xsl:value-of select="name"/></td>
              <td><xsl:value-of select="email"/></td>
              <td><xsl:value-of select="phones/phone[@type='home']"/></td>
              <td><xsl:value-of select="phones/phone[@type='work']"/></td>
              <td><xsl:value-of select="phones/phone[@type='emgc']"/></td>
              <td><xsl:value-of select="addresses/address/street"/></td>
              <td><xsl:value-of select="addresses/address/building_number"/></td>
              <td><xsl:value-of select="addresses/address/region"/></td>
              <td><xsl:value-of select="addresses/address/city"/></td>
              <td><xsl:value-of select="addresses/address/country"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
