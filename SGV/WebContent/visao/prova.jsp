<%@ include file="header.jsp" %>
<form action="#" class="formee" method="get">
	<fieldset>
		<legend>Avaliação</legend>
            <div class="grid-12-12">
            	<label class="bold">1) Qual é a primeira questão cadastrada no Sistema de Gerenciamento de Vagas?</label>
                <ul class="formee-list">
                    <li><input type="radio" value="A1" id="alt1A" name="resposta-questao1"><label for="alt1A">A</label></li>
                    <li><input type="radio" value="B1" id="alt1B" name="resposta-questao1"><label for="alt1B">B</label></li>
					<li><input type="radio" value="C1" id="alt1C" name="resposta-questao1"><label for="alt1C">C</label></li>
                    <li><input type="radio" value="D1" id="alt1D" name="resposta-questao1"><label for="alt1D">D</label></li>
                </ul>
            </div>
            <div class="grid-12-12">
            	<label class="bold">2) Qual é a segunda questão cadastrada no Sistema de Gerenciamento de Vagas?</label>
                <ul class="formee-list">
                    <li><input type="radio" value="A2" id="alt2A" name="resposta-questao2"><label for="alt2A">A</label></li>
                    <li><input type="radio" value="B2" id="alt2B" name="resposta-questao2"><label for="alt2B">B</label></li>
					<li><input type="radio" value="C2" id="alt2C" name="resposta-questao2"><label for="alt2C">C</label></li>
                    <li><input type="radio" value="D2" id="alt2D" name="resposta-questao2"><label for="alt2D">D</label></li>
                </ul>
            </div>
            <div class="grid-12-12">
            	<label class="bold">3) Qual é a terceira questão cadastrada no Sistema de Gerenciamento de Vagas?</label>
                <ul class="formee-list">
                    <li><input type="radio" value="A3" id="alt3A" name="resposta-questao3"><label for="alt3A">A</label></li>
                    <li><input type="radio" value="B3" id="alt3B" name="resposta-questao3"><label for="alt3B">B</label></li>
					<li><input type="radio" value="C3" id="alt3C" name="resposta-questao3"><label for="alt3C">C</label></li>
                    <li><input type="radio" value="D3" id="alt3D" name="resposta-questao3"><label for="alt3D">D</label></li>
                </ul>
            </div>
            <div class="grid-12-12">
            	<label class="bold">4) Qual é a quarta questão cadastrada no Sistema de Gerenciamento de Vagas?</label>
                <ul class="formee-list">
                    <li><input type="radio" value="A4" id="alt4A" name="resposta-questao4"><label for="alt4A">A</label></li>
                    <li><input type="radio" value="B4" id="alt4B" name="resposta-questao4"><label for="alt4B">B</label></li>
					<li><input type="radio" value="C4" id="alt4C" name="resposta-questao4"><label for="alt4C">C</label></li>
                    <li><input type="radio" value="D4" id="alt4D" name="resposta-questao4"><label for="alt4D">D</label></li>
                </ul>
            </div>

            <div class="grid-6-12"></div>
            <div class="grid-4-12">
                <input type="submit" value="Enviar Respostas" class="formee-medium align_center last" >
			</div>
	</fieldset>
</form>
<%@ include file="footer.jsp" %>