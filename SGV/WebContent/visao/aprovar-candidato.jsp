<%@ include file="header.jsp" %>

<!-- this section shows you most of the styled elements from the general stylesheet -->
<div class="grid-12-12">
    <table class="grid-12-12" id="table-questoes">
        <caption class="grid-12-12"><h2>Colaboradores Pendentes</h2></caption>
        <thead class="grid-12-12">
            <tr class="grid-12-12">
                <th class="grid-2-12">Nome</th>
                <th class="grid-8-12">Oportunidade</th>
                <th class="grid-2-12">Ações</th>
            </tr>
        </thead>
        <tbody class="grid-12-12">
            <tr class="grid-12-12">
                <td class="grid-2-12"><div><p>José das Cucuias Carioca</p></div></td>
                <td class="grid-8-12"><div><p>CEO da fabricação de teclas delete</p></div></td>
                <td class="grid-2-12 acao">
                    <div class="adicionar"><a href="#"><img src="<%=request.getContextPath() %>/visao/images/approve.png" alt="Aprovar Candidatura" ></a></div>
                    <div class="remover"><a href="#"><img src="<%=request.getContextPath() %>/visao/images/disapprove.png" alt="Reprovar Candidatura" ></a></div>
                </td>                
            </tr>                            
        </tbody>
    </table>
</div>

<%@ include file="footer.jsp" %>