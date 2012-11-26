
<%@include file="header.jsp" %>

<%! Usuario u; %>
<% u = (Usuario)session.getAttribute("user");
	if(u==null)
		if(session.getAttribute("userADM")==null)
			pageContext.forward("login.jsp"); 
	%>

<%! Oportunidade o; %>
<% o = (Oportunidade)request.getAttribute("oportunidade");
   if(o==null)
   {
	   o = new Oportunidade();
	   o.setIdOportunidade(0);
	   o.setAreaAtuacao("");
	   o.setBeneficios("");
	   o.setCargaHoraria(0);
	   o.setDataEncerramento(null);
	   o.setDescricao("");
	   o.setSalario(0);
	   o.setTitulo("");
   }
%>
<%! ArrayList requisitos,itens; %>
<% requisitos = (ArrayList) session.getAttribute("requisitos");
   itens = (ArrayList) session.getAttribute("itens");

   if(requisitos == null)
	   requisitos = new ArrayList();
   if(itens == null)
	   itens = new ArrayList();
%>
<form action="http://localhost:8080/SGV/Controle" class="formee" method="get">
	<fieldset id="dadosVaga">
		<legend>Dados da Vaga</legend>
		<div class="grid-1-12">
            <label for="id" class="bold">ID <em class="formee-req">*</em></label>
            <input type="text" name="id" value="<%=o.getIdOportunidade() %>" class="no-margin">
		</div>
        <div class="grid-6-12">
        	<label for="titulo" class="bold">Título <em class="formee-req">*</em></label>
            <input type="text" name="titulo" value="<%=o.getTitulo() %>" class="no-margin" placeholder="Título da Vaga" >
		</div>
		<div class="grid-5-12">
			<label class="bold">Área de Atuação</label>
            <select name="areaAtuacao">
                <%
						String aux = "", aux1 = "", aux2 = "", aux3 = "", aux4 = "";
						if(o.getAreaAtuacao().equals("Administrativo"))
							aux = "selected";
						if(o.getAreaAtuacao().equals("Comercial"))
							aux1 = "selected";
						if(o.getAreaAtuacao().equals("Finanças"))
							aux2 = "selected";
						if(o.getAreaAtuacao().equals("TI"))
							aux3 = "selected";
						if(o.getAreaAtuacao().equals("Vendas"))
							aux4 = "selected";
						out.write("<option value='Administrativo' id='area-opt1' " + aux + ">Administrativo</option>");
						out.write("<option value='Comercial' id='area-opt2' " + aux1 + ">Comercial</option>");
						out.write("<option value='Finanças' id='area-opt3' " + aux2 + ">Finanças</option>");
						out.write("<option value='TI' id='area-opt4' " + aux3 + ">TI</option>");
						out.write("<option value='Vendas' id='area-opt5' " + aux4 + ">Vendas</option>");
                %>
                </select>	 
        </div>
        <div class="grid-12-12"></div>
		<div class="grid-6-12">
        	<label class="bold">Benefí­cios</label>
        	<ul class="formee-list">
                    <li><input type="checkbox" value="Plano de Saúde" id="plano" name="plano"><label for="plano">Plano de Saúde</label></li>
                    <li><input type="checkbox" value="Ticket Refeição" id="ticket" name="ticket"><label for="ticket">Ticket Refeição</label></li>
                    <li><input type="checkbox" value="Cesta Básica" id="cesta-basica" name="cesta-basica"><label for="cesta-basica">Cesta Básica</label></li>
                    <li><input type="checkbox" value="Participação nos Lucros" id="pl" name="pl"><label for="pl">Participação nos Lucros</label></li>
                    <li><input type="checkbox" value="Plano Odontológico" id="dentista" name="dentista"><label for="dentista">Plano Odontológico</label></li>
                    <li><input type="checkbox" value="VT" id="vt" name="vt"><label for="vt">Vale Transporte</label></li>

            </ul>		
        </div>
        <div class="grid-3-12">
            <label for="jornada" class="bold">Carga Horária <em class="formee-req">*</em></label> 
            <select name="cargaHoraria">
                <option value="20">20</option>
                <option value="40">40</option>
            </select>
        </div>
                	
        <div class="grid-3-12">
	        <label for="salario" class="bold">Salário (R$)</label>
            <input type="text" name="salario" value="<%=o.getSalario() %>"  />
        </div>
        
		<div class="grid-12-12">
            <label for="desc" class="bold">Descrição</label>
            <textarea rows="10" cols="60" name="descricao" value="<%=o.getDescricao() %>" ></textarea>
        </div>	
		

		
        <div class="grid-3-12">
        	<label for="dataEncerramento" class="bold">Data de Encerramento</label>
            <input type="text" id="datepicker" name="dataEncerramento" value="<%=o.getDataEncerramento() %>"  />
        </div>
		
<div class="grid-12-12">
            	<table class="grid-12-12">
            		<caption class="grid-12-12"><h2>Requisitos Disponíveis</h2></caption>
            		<thead class="grid-12-12">
            			<tr class="grid-12-12">
            				<th class="grid-4-12">Requisito</th>
            				<th class="grid-4-12">Quantidade</th>
            				<th class="grid-4-12">Ações</th>
            			</tr>
					</thead>
                    <tbody class="grid-12-12">
                        <tr class="grid-12-12">
                            <td class="grid-4-12"><div>
                            	<select name="requisito">
				<option value="">SELECIONE</option>
				<% for(Object obj:requisitos)
				   {
						Requisito r = (Requisito)obj;
						out.write("<option value=" + r.getIdRequisito() + ">" + 
								r.getNome() + "</option>");
						
				   }	
					%>
			</select>
                            </div></td>
                            <td class="grid-4-12"><div><input type="text" name="quantidade" size=2 value=0 /></div></td>
                            <td class="grid-2-12 acao">                            	
                            	<div class="grid-11-12">
                                <input type="submit" name="comando" value="Adicionar" class="no-margin">
                                </div>
                                <div class="grid-1-12">
                                <input type="submit" name="comando" value="Remover" class="no-margin"/>
                                </div>															
                            </td>                            
                        </tr>                                       
                    </tbody>
            	</table>         
            	<%
            	out.write("<ul>");
            	for(Object o:itens)
				   {
						ItemRequisito i = (ItemRequisito)o;
						
						out.write("<li>" + i.getR().getNome() + "    " + i.getQuantidade() + "</li>");
						
				   }	
            	out.write("<ul>");
					%>                   
            </div>


		<div class="grid-12-12 no-margin">
			<div class="grid-3-12 no-margin"><input type="submit" name="comando" value="Cadastrar" /></div>
			<div class="grid-3-12 no-margin"><input type="submit" name="comando" value="Alterar"/></div>
			<div class="grid-3-12 no-margin"><input type="submit" name="comando" value="Excluir"/></div>
			<div class="grid-3-12 no-margin"><input type="submit" name="comando" value="Consultar"/></div>
		</div>
	<input type="hidden" name="tela" value="TelaOportunidade" />
	</div>
	</fieldset>
	</form>

</body>
</html>
<%@ include file="footer.jsp"  %>