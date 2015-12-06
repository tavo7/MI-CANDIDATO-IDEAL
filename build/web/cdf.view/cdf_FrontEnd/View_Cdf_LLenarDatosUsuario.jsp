
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Mi Candidato Ideal</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
      <link href="../../css/bootstrap.min.css" rel="stylesheet" media="screen">
        <link href="asset/css/estilo.css" rel="stylesheet" media="screen">
        <link href="../../css/estilo.css" rel="stylesheet" media="screen">
    </head>
    <body>
        <%@include file="View_Cdf_Cabecera.jsp" %>

        <div class="container-fluid">
            <div class="row contenido">
                <form name="usuario" action="View_Cdf_ControllerLLenarDatos.jsp" method="POST">

                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="ranking">
                            <div class="panel panel-default">
                                <div class="panel-heading"><h4 class="text-center text-uppercase" style="color: #ffffff;font-weight: bold;"> DATOS </h4></div>
                                <div class="panel-body">

                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th>
                                                    <span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                                                    Edad</th>
                                                <th class="text-center">
                                                    <span class="glyphicon glyphicon-signal" aria-hidden="true"></span>
                                                    Ciudad</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td><input type="number" class="form-control" name="p_edad" placeholder="99" required=""max="99" min="18"></td>
                                            <td>
                                                <div class="ui-widget" style="text-align: right;">
                                                    <select class="form-control" id="combobox" name="select_s" required="">
                                                        <option value="1">Chachapoyas</option>
                                                        <option value="2">Bagua</option>
                                                        <option value="3">Bongará</option>
                                                        <option value="4">Condorcanqui</option>
                                                        <option value="5">Luya</option>
                                                        <option value="6">Rodríguez de Mendoza</option>
                                                        <option value="7">Utcubamba</option>
                                                        <option value="8">Huaraz</option>
                                                        <option value="9">Aija</option>
                                                        <option value="10">Antonio Raymondi</option>
                                                        <option value="11">Asunción</option>
                                                        <option value="12">Bolognesi</option>
                                                        <option value="13">Carhuaz</option>
                                                        <option value="14">Carlos Fermín Fitzcarrald</option>
                                                        <option value="15">Casma</option>
                                                        <option value="16">Corongo</option>
                                                        <option value="17">Huari</option>
                                                        <option value="18">Huarmey</option>
                                                        <option value="19">Huaylas</option>
                                                        <option value="20">Mariscal Luzuriaga</option>
                                                        <option value="21">Ocros</option>
                                                        <option value="22">Pallasca</option>
                                                        <option value="23">Pomabamba</option>
                                                        <option value="24">Recuay</option>
                                                        <option value="25">Santa</option>
                                                        <option value="26">Sihuas</option>
                                                        <option value="27">Yungay</option>
                                                        <option value="28">Abancay</option>
                                                        <option value="29">Andahuaylas</option>
                                                        <option value="30">Antabamba</option>
                                                        <option value="31">Aymaraes</option>
                                                        <option value="32">Cotabambas</option>
                                                        <option value="33">Chincheros</option>
                                                        <option value="34">Grau</option>
                                                        <option value="35">Arequipa</option>
                                                        <option value="36">Camaná</option>
                                                        <option value="37">Caravelí</option>
                                                        <option value="38">Castilla</option>
                                                        <option value="39">Caylloma</option>
                                                        <option value="40">Condesuyos</option>
                                                        <option value="41">Islay</option>
                                                        <option value="42">La Unión</option>
                                                        <option value="43">Huamanga</option>
                                                        <option value="44">Cangallo</option>
                                                        <option value="45">Huanca Sancos</option>
                                                        <option value="46">Huanta</option>
                                                        <option value="47">La Mar</option>
                                                        <option value="48">Lucanas</option>
                                                        <option value="49">Parinacochas</option>
                                                        <option value="50">Páucar del Sara Sara</option>
                                                        <option value="51">Sucre</option>
                                                        <option value="52">Víctor Fajardo</option>
                                                        <option value="53">Vilcas Huamán</option>
                                                        <option value="54">Cajamarca</option>
                                                        <option value="55">Cajabamba</option>
                                                        <option value="56">Celendín</option>
                                                        <option value="57">Chota</option>
                                                        <option value="58">Contumazá</option>
                                                        <option value="59">Cutervo</option>
                                                        <option value="60">Hualgayoc</option>
                                                        <option value="61">Jaén</option>
                                                        <option value="62">San Ignacio</option>
                                                        <option value="63">San Marcos</option>
                                                        <option value="64">San Miguel</option>
                                                        <option value="65">San Pablo</option>
                                                        <option value="66">Santa Cruz</option>
                                                        <option value="67">Callao</option>
                                                        <option value="68">Cusco</option>
                                                        <option value="69">Acomayo</option>
                                                        <option value="70">Anta</option>
                                                        <option value="71">Calca</option>
                                                        <option value="72">Canas</option>
                                                        <option value="73">Canchis</option>
                                                        <option value="74">Chumbivilcas</option>
                                                        <option value="75">Espinar</option>
                                                        <option value="76">La Convención</option>
                                                        <option value="77">Paruro</option>
                                                        <option value="78">Paucartambo</option>
                                                        <option value="79">Quispicanchi</option>
                                                        <option value="80">Urubamba</option>
                                                        <option value="81">Huancavelica</option>
                                                        <option value="82">Acobamba</option>
                                                        <option value="83">Angaraes</option>
                                                        <option value="84">Castrovirreyna</option>
                                                        <option value="85">Churcampa</option>
                                                        <option value="86">Huaytará</option>
                                                        <option value="87">Tayacaja</option>
                                                        <option value="88">Huánuco</option>
                                                        <option value="89">Ambo</option>
                                                        <option value="90">Dos de Mayo</option>
                                                        <option value="91">Huacaybamba</option>
                                                        <option value="92">Huamalíes</option>
                                                        <option value="93">Leoncio Prado</option>
                                                        <option value="94">Marañón</option>
                                                        <option value="95">Pachitea</option>
                                                        <option value="96">Puerto Inca</option>
                                                        <option value="97">Lauricocha</option>
                                                        <option value="98">Yarowilca</option>
                                                        <option value="99">Ica</option>
                                                        <option value="100">Chincha</option>
                                                        <option value="101">Nazca</option>
                                                        <option value="102">Palpa</option>
                                                        <option value="103">Pisco</option>
                                                        <option value="104">Huancayo</option>
                                                        <option value="105">Concepción</option>
                                                        <option value="106">Chanchamayo</option>
                                                        <option value="107">Jauja</option>
                                                        <option value="108">Junín</option>
                                                        <option value="109">Satipo</option>
                                                        <option value="110">Tarma</option>
                                                        <option value="111">Yauli</option>
                                                        <option value="112">Chupaca</option>
                                                        <option value="113">Trujillo</option>
                                                        <option value="114">Ascope</option>
                                                        <option value="115">Bolívar</option>
                                                        <option value="116">Chepén</option>
                                                        <option value="117">Julcán</option>
                                                        <option value="118">Otuzco</option>
                                                        <option value="119">Pacasmayo</option>
                                                        <option value="120">Pataz</option>
                                                        <option value="121">Sánchez Carrión</option>
                                                        <option value="122">Santiago de Chuco</option>
                                                        <option value="123">Gran Chimú</option>
                                                        <option value="124">Virú</option>
                                                        <option value="125">Chiclayo</option>
                                                        <option value="126">Ferreñafe</option>
                                                        <option value="127">Lambayeque</option>
                                                        <option value="128">Lima</option>
                                                        <option value="129">Huaura</option>
                                                        <option value="130">Barranca</option>
                                                        <option value="131">Cajatambo</option>
                                                        <option value="132">Canta</option>
                                                        <option value="133">Cañete</option>
                                                        <option value="134">Huaral</option>
                                                        <option value="135">Huarochirí</option>
                                                        <option value="136">Oyón</option>
                                                        <option value="137">Yauyos</option>
                                                        <option value="138">Maynas</option>
                                                        <option value="139">Alto Amazonas</option>
                                                        <option value="140">Loreto</option>
                                                        <option value="141">Mariscal Ramón Castilla</option>
                                                        <option value="142">Requena</option>
                                                        <option value="143">Ucayali</option>
                                                        <option value="144">Dátem del Marañón</option>
                                                        <option value="145">Tambopata</option>
                                                        <option value="146">Manu</option>
                                                        <option value="147">Tahuamanu</option>
                                                        <option value="148">Mariscal Nieto</option>
                                                        <option value="149">General Sánchez Cerro</option>
                                                        <option value="150">Ilo</option>
                                                        <option value="151">Pasco</option>
                                                        <option value="152">Daniel Alcídes Carrión</option>
                                                        <option value="153">Oxapampa</option>
                                                        <option value="154">Piura</option>
                                                        <option value="155">Ayabaca</option>
                                                        <option value="156">Huancabamba</option>
                                                        <option value="157">Morropón</option>
                                                        <option value="158">Paita</option>
                                                        <option value="159">Sullana</option>
                                                        <option value="160">Talara</option>
                                                        <option value="161">Sechura</option>
                                                        <option value="162">Puno</option>
                                                        <option value="163">Azángaro</option>
                                                        <option value="164">Carabaya</option>
                                                        <option value="165">Chucuito</option>
                                                        <option value="166">El Collao</option>
                                                        <option value="167">Huancané</option>
                                                        <option value="168">Lampa</option>
                                                        <option value="169">Melgar</option>
                                                        <option value="170">Moho</option>
                                                        <option value="171">San Antonio de Putina</option>
                                                        <option value="172">San Román</option>
                                                        <option value="173">Sandia</option>
                                                        <option value="174">Yunguyo</option>
                                                        <option value="175">Moyobamba</option>
                                                        <option value="176">Bellavista</option>
                                                        <option value="177">El Dorado</option>
                                                        <option value="178">Huallaga</option>
                                                        <option value="179">Lamas</option>
                                                        <option value="180">Mariscal Cáceres</option>
                                                        <option value="181">Picota</option>
                                                        <option value="182">Rioja</option>
                                                        <option value="183">San Martín</option>
                                                        <option value="184">Tocache</option>
                                                        <option value="185">Tacna</option>
                                                        <option value="186">Candarave</option>
                                                        <option value="187">Jorge Basadre</option>
                                                        <option value="188">Tarata</option>
                                                        <option value="189">Tumbes</option>
                                                        <option value="190">Contralmirante Villar</option>
                                                        <option value="191">Zarumilla</option>
                                                        <option value="192">Coronel Portillo</option>
                                                        <option value="193">Atalaya</option>
                                                        <option value="194">Padre Abad</option>
                                                        <option value="195">Purus</option>
                                                    </select>
                                                </div>
                                            <td>
                                                </tr>
                                                </tbody>
                                                </table>
                                                </div>
                                                </div>
                                                </div>
                                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                    <div class="continuar">
                                                        <input type="submit" class="button" value="! Continuar !"/> 
                                                    </div>
                                                </div>

                                                </div>
                                                </form>
                                                </div>
                                                </div>
        <%@include file="View_Cdf_Pie.jsp" %>
         <script src="../../js/jquery-1.9.1.min.js"></script>
    <script src="../../js/bootstrap.min.js"></script>
   
                                                <script src="lib/jquery/jquery-1.11.3.min.js"></script>
                                                <script src="lib/bootstrap/js/bootstrap.min.js"></script>
                                                <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
                                                <script>
                                                    (function ($) {
                                                        $.widget("custom.combobox", {
                                                            _create: function () {
                                                                this.wrapper = $("<span>")
                                                                        .addClass("custom-combobox")
                                                                        .insertAfter(this.element);

                                                                this.element.hide();
                                                                this._createAutocomplete();
                                                                this._createShowAllButton();
                                                            },
                                                            _createAutocomplete: function () {
                                                                var selected = this.element.children(":selected"),
                                                                        value = selected.val() ? selected.text() : "";

                                                                this.input = $("<input>")
                                                                        .appendTo(this.wrapper)
                                                                        .val(value)
                                                                        .attr("title", "")
                                                                        .addClass("custom-combobox-input ui-widget ui-widget-content ui-state-default ui-corner-left")
                                                                        .autocomplete({
                                                                            delay: 0,
                                                                            minLength: 0,
                                                                            source: $.proxy(this, "_source")
                                                                        })
                                                                        .tooltip({
                                                                            tooltipClass: "ui-state-highlight"
                                                                        });

                                                                this._on(this.input, {
                                                                    autocompleteselect: function (event, ui) {
                                                                        ui.item.option.selected = true;
                                                                        this._trigger("select", event, {
                                                                            item: ui.item.option
                                                                        });
                                                                    },
                                                                    autocompletechange: "_removeIfInvalid"
                                                                });
                                                            },
                                                            _source: function (request, response) {
                                                                var matcher = new RegExp($.ui.autocomplete.escapeRegex(request.term), "i");
                                                                response(this.element.children("option").map(function () {
                                                                    var text = $(this).text();
                                                                    if (this.value && (!request.term || matcher.test(text)))
                                                                        return {
                                                                            label: text,
                                                                            value: text,
                                                                            option: this
                                                                        };
                                                                }));
                                                            },
                                                            _removeIfInvalid: function (event, ui) {

                                                                // Selected an item, nothing to do
                                                                if (ui.item) {
                                                                    return;
                                                                }

                                                                // Search for a match (case-insensitive)
                                                                var value = this.input.val(),
                                                                        valueLowerCase = value.toLowerCase(),
                                                                        valid = false;
                                                                this.element.children("option").each(function () {
                                                                    if ($(this).text().toLowerCase() === valueLowerCase) {
                                                                        this.selected = valid = true;
                                                                        return false;
                                                                    }
                                                                });

                                                                // Found a match, nothing to do
                                                                if (valid) {
                                                                    return;
                                                                }

                                                                // Remove invalid value
                                                                this.input
                                                                        .val("")
                                                                        .attr("title", value + " didn't match any item")
                                                                        .tooltip("open");
                                                                this.element.val("");
                                                                this._delay(function () {
                                                                    this.input.tooltip("close").attr("title", "");
                                                                }, 2500);
                                                                this.input.autocomplete("instance").term = "";
                                                            },
                                                            _destroy: function () {
                                                                this.wrapper.remove();
                                                                this.element.show();
                                                            }
                                                        });
                                                    })(jQuery);

                                                    $(function () {
                                                        $("#combobox").combobox();
                                                        $("#toggle").click(function () {
                                                            $("#combobox").toggle();
                                                        });
                                                    });
                                                </script>
                                                </body>
                                                </html>
