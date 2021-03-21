<!DOCTYPE html>
<html lang="en">
<head>
    <title>Test Dynamic CV</title>
    <style>
    body {
        font-family: "Georgia Pro";
        font-size: 12pt;
        color: #191919;
        }
    .myTable td {
        padding: 0.25em;
        font-family: "Georgia Pro";
        vertical-align: top;
    }
    .straightTable {
        padding-left: 1.75em;
    }
    .straightTable td {
        padding: 0.25em;
        font-family: "Georgia Pro";
        vertical-align: top;
    }
    h2 {
        color: #990000;
        font-size: 1em;
        font-family: "BentonSans";
        font-weight: bold;
        text-align: left;
        text-transform: uppercase;
        text-decoration: underline;
    }
    h2::after {
        content: ":";
    }
    h3 {
        color: #990000;
        font-size: 1em;
        font-family: "BentonSans";
        font-weight: bold;
        text-align: left;
        text-transform: uppercase;
    }
    h3::after {
        content: ":";
    }
    .heading {
        font-family: "BentonSansCond";
        width: 100%;
        text-align: center;
        margin: 0px auto;
        padding-top: 0.25em;
        overflow: auto;
        font-size: 10pt;
        text-transform: uppercase;
    }
    .heading h1 {
        font-family: BentonSans;
        font-weight: bold;
        font-size: 2em;
    }
    .heading a {
        color: #191919;
        font-family: 'JetBrains Mono NL';
        font-size: 9pt;
    }
    </style>
</head>
<body>
    <div class="heading">
        <h1>Jeremy Forest Price, PhD</h1>
        Urban Teacher Education | IU School of Education-Indianapolis at IUPUI<br />
        ES 3162 | 902 West New York Street | Indianapolis, IN 46206<br />
        <a href="mailto:jfprice@iupui.edu">jfprice@iupui.edu</a> | 1.317.274.6808
    </div>
    <h2>Education</h2>
    <div>
            {% for item in education %}
            <div>
                <div>{{item.year}}</div>
                <div>
                    <strong>{{item.institution}}</strong><br />
                    {{item.degree}}<br />
                </div>
            </div>
            {% endfor %}
        </div>

    <table class="myTable">
    {% for item in education %}
        <tr>
            <td>{{ item.institution }}</td>
            <td>{{ item.degree }}</td>
            <td>{{ item.year }}</td>
        </tr>
    {% endfor %}
    </table>
{{ education }}
    {# a comment #}
</body>
</html>