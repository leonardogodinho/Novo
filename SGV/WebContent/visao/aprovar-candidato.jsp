<%@ include file="header.jsp" %>
<%@page import="dao.*" %>
<%! Usuario u; %>
<% u = (Usuario)session.getAttribute("user");
	if(u==null)
		if(session.getAttribute("userADM")==null)
			pageContext.forward("login.jsp"); 
	%>
<% ArrayList<Candidatura> listaCandidatura; %>
<% listaCandidatura = (ArrayList<Candidatura>) session.getAttribute("listaCandidatura");
   if(listaCandidatura == null)
	   listaCandidatura = new ArrayList();
%>
<div class="grid-12-12">
    <table class="grid-12-12" id="table-questoes">
        <caption class="grid-12-12"><h2>Colaboradores Pendentes</h2></caption>
        <thead class="grid-12-12">
            <tr class="grid-12-12">
                <th class="grid-2-12">Oportunidade</th>
                <th class="grid-8-12">Colaborador</th>
                <th class="grid-2-12">A��es</th>
            </tr>
        </thead>
        <tbody class="grid-12-12">
	<% for(Object o:listaCandidatura)
	{
		out.write("<tr class='grid-12-12'>");
		Candidatura ca = (Candidatura)o;
		Oportunidade op = new Oportunidade();
		op.setIdOportunidade(ca.getIdOportunidade());
		Colaborador c = new Colaborador();
		c.setIdUsuario(ca.getIdUsuario());
		
		op = new DAOOportunidade().consultar(op);
		c = new DAOColaborador().consultar(c);
		
		out.write("<td class='grid-2-12'><div><p>" + op.getTitulo() + "</p></div></td>");
		out.write("<td class='grid-8-12'><div><p>" + c.getNome() + "</p></div></td>");
		out.write("<td class='grid-8-12'>");
		out.write("<div class='adicionar'><a href='http://localhost:8080/SGV/Controle?tela=TelaAprovarCandidato&comando=Aprovar&id=" + ca.getIdCandidatura() + "'><img src='" + request.getContextPath() + "/visao/images/approve.png' alt='Aprovar Candidatura' ></a></div>");
		out.write("<div class='remover'><a href='http://localhost:8080/SGV/Controle?tela=TelaAprovarCandidato&comando=Reprovar&id=" + ca.getIdCandidatura() + "'><img src='" + request.getContextPath() + "/visao/images/disapprove.png' alt='Reprovar Candidatura' ></a></div>");		
		out.write("</td>");
	}
	%>
	</tbody>
    </table>
</div>
<%@ include file="footer.jsp" %>