<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="html" encoding="UTF-8"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>价格大于20的商品</title>
                <style>
                    table {
                    border-collapse: collapse;
                    background-color: yellow;
                    }
                    th, td {
                    border: 1px solid black;
                    padding: 8px;
                    text-align: center;
                    }
                </style>
            </head>
            <body>
                <table>
                    <tr>
                        <th>id</th>
                        <th>name</th>
                        <th>leibie</th>
                        <th>price</th>
                    </tr>
                    <!-- 遍历所有价格大于20的商品 -->
                    <xsl:for-each select="shop/product[price &gt; 20]">
                        <tr>
                            <td>
                                <xsl:value-of select="id"/>
                            </td>
                            <td>
                                <xsl:value-of select="name"/>
                            </td>
                            <td>
                                <xsl:value-of select="leibie"/>
                            </td>
                            <td>
                                <xsl:value-of select="price"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
