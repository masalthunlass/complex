<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js">
    <head>
        <meta charset="utf-8">
        <!-- DNS prefetch shaves a few milliseconds when working with CDNs. -->
        <link rel="dns-prefetch" href="//fonts.googleapis.com">
        <link rel="dns-prefetch" href="//ajax.googleapis.com">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

        <title>Bench</title>

        <meta name="description" content="">
        <meta name="viewport" content="width=device-width">

        <link href='http://fonts.googleapis.com/css?family=Open+Sans&amp;subset=latin' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="css/lib/bootstrap.min.css">
        <link rel="stylesheet" href="css/lib/dataTables.bootstrap.css">
        <link rel="stylesheet" href="css/lib/codemirror.css">
        <!-- TODO We have to select a theme. -->
        <link rel="stylesheet" href="css/lib/solarized.css">
        <link rel="stylesheet" href="css/lib/elegant.css">
        <link rel="stylesheet" href="css/lib/neat.css">
        <link rel="stylesheet" href="css/main.css">

        <!-- Modernizr is a polyfill library : enhances old browser support for new (HTML5) features. -->
        <script src="js/lib/modernizr-latest.js"></script>
    </head>
    <body>
        <!-- container-fluid = Responsive layout. -->
        <div id="content" class="container-fluid">
            <header>
                <span class="f1 pull-left"></span>
                <span class="f2 pull-left"></span>
                <span class="f3 pull-left"></span>

                <a href="https://github.com/masalthunlass/complex"><img style="position: absolute; top: 0; right: 5%; border: 0;" src="img/forkme_right_red_aa0000.png" alt="Fork me on GitHub"></a>

                <h1>Bench <img src="img/bench-logo.png"> <small>Find a sturdy home for your triples</small></h1>
            </header>

            <div class="tabbable tabs-left">
                <ul class="nav nav-tabs">
                    <li class="active"><a href="#query" data-toggle="tab"><i class="icon-search"></i> Query</a></li>
                    <li><a href="#environment" data-toggle="tab"><i class="icon-cog"></i> Environment</a></li>
                    <!-- Those three tabs can only be accessed after executing a query. -->
                    <li class="disabled"><a href="#results" data-toggle="tab"><i class="icon-th"></i> Results</a></li>
                    <li class="disabled"><a href="#visualization" data-toggle="tab"><i class="icon-picture"></i> Visualization</a></li>
                    <li class="disabled"><a href="#benchmark" data-toggle="tab"><i class="icon-time"></i> Benchmark</a></li>
                    <li><a href="#history" data-toggle="tab"><i class="icon-calendar"></i> History</a></li>
                    <li><a href="#about" data-toggle="tab"><i class="icon-bullhorn"></i> About</a></li>
                </ul>

                <div class="tab-content">
                    <div class="tab-pane active" id="query">
                        <form class="row-fluid">

                            <fieldset class="span8">
                                <div class="control-group">
                                    <!-- This select is populated with a JSON file at runtime. -->
                                    <select id="query-select">
                                    </select>
                                    <!-- This textarea is handled by Code Mirror and populated at runtime. -->
                                    <textarea id="query-editor" name="query-editor">
                                    </textarea>
                                </div>
                            </fieldset>

                            <fieldset class="span4">
                                <!-- Oddly placed SEND QUERY button. -->
                                <div class="control-group">
                                    <button type="submit" class="btn btn-block btn-primary">Send</button>
                                </div>
                                <!-- Parameters to customize our query execution. -->
                                <div class="control-group">
                                    <label for="set-limit" class="checkbox">
                                        <input type="checkbox" id="set-limit" name="set-limit" value="true" checked/>
                                        Limit to the first 500 results
                                    </label>
                                    <label for="use-inference" class="checkbox">
                                        <input type="checkbox" id="use-inference" name="use-inference" value="true" checked/>
                                        Use an inference engine
                                    </label>
                                </div>

                                <hr/>

                                <!-- A handy little box using the prefix.cc API to add prefixes to our queries. -->
                                <div class="control-group">
                                    <div class="input-prepend input-append">
                                        <span class="add-on"><i class="icon-plus"></i></span>
                                        <input id="prefix-text" type="text" placeholder="Enter a namespace to add"/>
                                        <button id="prefix-button" class="btn" type="button">Go !</button>
                                    </div>

                                    <h5>Referenced Namespaces</h5>
                                    <!-- This list is populated by links to our current namespaces at runtime. -->
                                    <ul class="query-namespaces">
                                    </ul>
                                </div>
                            </fieldset>
                        </form>
                    </div>
                    <!-- TODO : due thursday morning.  -->
                    <div class="tab-pane" id="environment">
                        Viz
                    </div>
                    <!-- TODO : due thursday before lunch. -->
                    <div class="tab-pane" id="results">
                        <!-- Uses the DataTables plugin. -->
                        <table class="observation-table table table-striped table-condensed table-bordered">
                            <thead>
                                <tr>
                                    <th>Col 1</th>
                                    <th>Col 2</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr><td>OB1</td><td>OB2</td></tr>
                                <!-- Emmet FTW ! -->
                                <!-- tr*15>td*2>lorem2 -->
                                <tr><td>Lorem ipsum.</td><td>Ea tenetur.</td></tr>
                                <tr><td>Lorem ipsum.</td><td>Blanditiis iure.</td></tr>
                                <tr><td>Lorem ipsum.</td><td>Delectus animi.</td></tr>
                                <tr><td>Lorem ipsum.</td><td>Enim atque.</td></tr>
                                <tr><td>Lorem ipsum.</td><td>Obcaecati maiores.</td></tr>
                                <tr><td>Lorem ipsum.</td><td>Quos asperiores!</td></tr>
                                <tr><td>Lorem ipsum.</td><td>Dolore maiores?</td></tr>
                                <tr><td>Lorem ipsum.</td><td>Nihil sit!</td></tr>
                                <tr><td>Lorem ipsum.</td><td>Facilis quas.</td></tr>
                                <tr><td>Lorem ipsum.</td><td>Et quis.</td></tr>
                                <tr><td>Lorem ipsum.</td><td>Similique quas.</td></tr>
                                <tr><td>Lorem ipsum.</td><td>Laudantium ipsam.</td></tr>
                                <tr><td>Lorem ipsum.</td><td>Ipsa quia.</td></tr>
                                <tr><td>Lorem ipsum.</td><td>Culpa eligendi.</td></tr>
                                <tr><td>Lorem ipsum.</td><td>Ipsa ipsam.</td></tr>
                                <tr><td>Lorem ipsum.</td><td>Delectus sint.</td></tr>
                                <tr><td>Lorem ipsum.</td><td>Nihil expedita.</td></tr>
                                <tr><td>Lorem ipsum.</td><td>Laudantium maxime?</td></tr>
                                <tr><td>Lorem ipsum.</td><td>Autem amet?</td></tr>
                                <tr><td>Lorem ipsum.</td><td>Velit odio.</td></tr>
                                <tr><td>Lorem ipsum.</td><td>Facere accusantium.</td></tr>
                                <tr><td>Lorem ipsum.</td><td>Reiciendis quasi.</td></tr>
                                <tr><td>Lorem ipsum.</td><td>Ratione tempore.</td></tr>
                                <tr><td>Lorem ipsum.</td><td>Ab alias.</td></tr>
                                <tr><td>Lorem ipsum.</td><td>Corporis dolor.</td></tr>
                                <tr><td>Lorem ipsum.</td><td>Voluptas temporibus.</td></tr>
                                <tr><td>Lorem ipsum.</td><td>Animi ut.</td></tr>
                                <tr><td>Lorem ipsum.</td><td>Necessitatibus omnis!</td></tr>
                                <tr><td>Lorem ipsum.</td><td>Quos impedit.</td></tr>
                                <tr><td>Lorem ipsum.</td><td>Provident odio.</td></tr>
                            </tbody>
                        </table>
                    </div>
                    <!-- TODO : due thursday afternoon. -->
                    <div class="tab-pane" id="visualization">
                        Viz
                    </div>
                    <!-- TODO : due thursday evening. -->
                    <div class="tab-pane" id="benchmark">
                        Bench
                    </div>
                    <!-- TODO : due thursday before lunch. -->
                    <div class="tab-pane" id="history">
                        <div class="history-header">
                            <div class="row-fluid">
                                <div class="span6">
                                    <h4>Queries</h4>
                                </div>
                                <div class="span6">
                                    <h4>Environment</h4>
                                </div>
                            </div>
                        </div>
                        <div class="row-fluid history-query">
                            <div class="span6">
                                <textarea disabled></textarea>
                            </div>
                            <div class="span6">
                                <h5>Execution information</h5>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corporis illo est ullam eaque modi pariatur optio amet ad sed similique fugiat debitis sint veritatis hic id commodi cupiditate odit harum quod aperiam maxime illum repellendus quisquam incidunt dicta. Odit qui corporis incidunt inventore maiores fugiat harum debitis rem autem laborum!</p>
                            </div>
                        </div>
                        <div class="row-fluid">
                            <div class="span6">
                                <textarea disabled></textarea>
                            </div>
                            <div class="span6">
                                <h5>Execution information</h5>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corporis illo est ullam eaque modi pariatur optio amet ad sed similique fugiat debitis sint veritatis hic id commodi cupiditate odit harum quod aperiam maxime illum repellendus quisquam incidunt dicta. Odit qui corporis incidunt inventore maiores fugiat harum debitis rem autem laborum!</p>
                            </div>
                        </div>
                    </div>

                    <!-- TODO : due thursday morning. -->
                    <div class="tab-pane" id="about">
                        About
                    </div>
                </div>
            </div>  <!-- /container -->

            <footer>
                <div class="container">
                    <hr/>
                    <p>An exploration of RDF storage solutions. By <a href="https://github.com/violethaze/">Namrata Patel</a>, <a href="http://github.com/masalthunlass">Mathilde Salthun-Lassale</a>, <a href="https://github.com/marminthibaut/">Thibaut Marmin</a> and <a href="https://github.com/ThibWeb/">Thibaud Colas</a>.</p>
                    <!-- TODO : Add everything used here. -->
                    <p>Built with <a href="https://jena.apache.org/">Apache Jena</a>.</p>
                </div>
            </footer>

        </div>

        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="js/lib/jquery-1.9.0.min.js"><\/script>')</script>
        <script src="js/lib/bootstrap.min.js"></script>
        <script src="js/lib/d3.v3.min.js"></script>
        <script src="js/lib/jquery.dataTables.min.js"></script>
        <script src="js/lib/dataTables.bootstrap.js"></script>
        <script src="js/lib/codemirror/codemirror.js"></script>
        <script src="js/lib/codemirror/matchbrackets.js"></script>
        <script src="js/lib/codemirror/searchcursor.js"></script>
        <script src="js/lib/codemirror/match-highlighter.js"></script>
        <script src="js/lib/codemirror/sparql.js"></script>
        <script src="js/main.js"></script>
    </body>
</html>
