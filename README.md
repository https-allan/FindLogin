<h1 align="left">FindLogin.sh</h1>

<p align="left">
    <strong>FindLogin.sh</strong> é uma ferramenta simples em shell script para extrair logins e senhas de arquivos <code>.txt</code> desorganizados, facilitando o processo de testar credenciais em sites específicos.
</p>

<h2 align="left">📋 Funcionalidades</h2>
<ul align="left">
    <li><strong>Busca por logins e senhas</strong>: Extrai credenciais de um arquivo com base no domínio informado.</li>
    <li><strong>Compatibilidade</strong>: Funciona com arquivos <code>.txt</code> desorganizados e não formatados.</li>
    <li><strong>Fácil de usar</strong>: Basta fornecer o arquivo de log e o domínio desejado.</li>
</ul>

<h2 align="left">🚀 Como Usar</h2>
<h3 align="left">1. Clone o Repositório</h3>
<pre align="left">
    <code>
git clone https://github.com/seuusuario/findlogin.git
cd findlogin
    </code>
</pre>

<h3 align="left">2. Torne o Script Executável</h3>
<pre align="left">
    <code>
chmod +x findlogin.sh
    </code>
</pre>

<h3 align="left">3. Execute o Script</h3>
<pre align="left">
    <code>
./findlogin.sh
    </code>
</pre>

<h3 align="left">4. Insira as Informações Solicitadas</h3>
<p align="left">
    <strong>Target Directory</strong>: O caminho do arquivo <code>.txt</code> contendo as credenciais. <br>
    <strong>Target URL</strong>: A URL do site para o qual deseja buscar as credenciais.
</p>
<p align="left">
    <strong>Exemplo:</strong>
</p>
<pre align="left">
    <code>
[+] Target Directory -> logs.txt
[+] Target URL -> https://www.exemplo.com/
    </code>
</pre>

<h3 align="left">📌 Como Devem Estar as URLs no Arquivo</h3>
<p align="left">
    Para que a ferramenta funcione corretamente, as linhas do arquivo <code>.txt</code> devem conter URLs completas ou pelo menos o domínio. Exemplo:
</p>
<pre align="left">
    <code>
https://www.exemplo.com/user1:password1
http://www.exemplo.com.br/login:user2:password2
ftp://ftp.exemplo.com:user3:password3
    </code>
</pre>
<p align="left">
    O script irá identificar o domínio informado e buscará as credenciais correspondentes no arquivo.
</p>

<h2 align="left">📄 Licença</h2>
<p align="left">
    Este projeto está licenciado sob a <strong>MIT License</strong>.
</p>
