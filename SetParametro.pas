unit SetParametro;

interface

uses
  uDMConectDB, SysUtils, Classes, Forms, Windows, ExtCtrls, menus,  EditBusca, Graphics;

type
  TTipoConsulta = (TipoProduct, TipoVendorPricingTable, TipoCustomer, TipoCustomerCompany, TipoContractor, TipoPricingTable, TipoSupplier, TipoProduto, TipoProdutoVendas, TipoCliente, TipoFornecedorX, TipoItensFaturado, TipoProdutoFornecedor, TipoCompras,
                   TipoProdutoMateria, TipoHistoricoInteracao, TipoVendas, TipoCentroCusto, TipoTransportadora,
                   TipoVendedor, TipoHistoricoVendas, TipoProdutoEspecie, TipoComposicaoCPV, TipoBanco, TipoGrupo, TipoPlanoContas,
                   TipoMarca, TipoMarcaProduto, TipoCargo, TipoProfissao, TipoContatoFornecedor, TipoContatoCliente, TipoNatureza,
                   TipoCNAE, TipoFilial, TipoUsuario, TipoFinalidade, TipoMensagemPadrao, TipoChaveReferencia, TipoContaCorrente,
                   TipoNFE, TipoTreinamento, TipoFornecedor, TipoCurso, TipoInstrutor, TipoParticipante, TipoCursoID,  TipoPeriodicidade,
                   TipoFornecedorID, TipoPeriodicidadeID, TipoTpTreinamentoID, TipoFilialID, TipoInstrutorID,
                   TipoTreinamentoID, TipoPerfil, TipoOperacao,TipoUsuarioID, TipoParticipanteID, TipoParticipanteCad,
                   TipoCentroCustoID, TipoCargoID, TipoParticipanteFILIAL, TipoFuncao);

procedure SetParametros(CaixaTexto: TEditBusca; TipoConsulta: TTipoConsulta);
procedure SetParametroTabela(EditBusca: TEditBusca; Tabela: ShortString);

implementation

const
  WIDTH_CODIGO35  : Integer = 35;
  WIDTH_CODIGO    : Integer = 80;
  WIDTH_DATA      : Integer = 100;
  WIDTH_PRODUTO   : Integer = 160;
  WIDTH_DOCUMENTO : Integer = 120;
  WIDTH_NOME      : Integer = 180;
  WIDTH_ENDERECO  : Integer = 200;
  WIDTH_APELIDO   : Integer = 200;
  WIDTH_NOME220   : Integer = 220;
  WIDTH_DESCRICAO : Integer = 500;

procedure SetParametros(CaixaTexto: TEditBusca; TipoConsulta: TTipoConsulta);
begin
  //CaixaTexto.bs_Conexao := DB_Conect.SQLConnection;
  CaixaTexto.Clear;
  CaixaTexto.bs_Fields.Clear;
  CaixaTexto.bs_Caption      := '';
  CaixaTexto.bs_Table        := '';
  CaixaTexto.bs_TextResult   := '';
  CaixaTexto.bs_Filter       := '';
  CaixaTexto.Bs_IndexSearch  := '';
  CaixaTexto.bs_Join         := '';
  CaixaTexto.bs_DefaultBusca := '';
  CaixaTexto.bs_KeyField     := '';
  CaixaTexto.bs_KeyField2    := '';

  CaixaTexto.bs_OrderBy   := '';
  CaixaTexto.bs_SetPlaca  := False;
  CaixaTexto.bs_SetCPF    := False;
  CaixaTexto.bs_SetCNPJ   := False;
  CaixaTexto.bs_SetColor  := False;


  if TipoConsulta = TipoProduct then
  begin
    CaixaTexto.bs_Caption := 'Product Table';
    CaixaTexto.bs_Table := 'TBPRODUCT P With (NOLOCK)';
    CaixaTexto.bs_Fields.Add('P.ID_PRODUCT;ID;;' + inttostr(WIDTH_CODIGO));                           //0
    CaixaTexto.bs_Fields.Add('TP.DESCRIPTION;PRODUCT TYPE;;' + inttostr(WIDTH_DOCUMENTO));               //1
    CaixaTexto.bs_Fields.Add('TS.DESCRIPTION;PRODUCT STYLE;;' + inttostr(WIDTH_DOCUMENTO));              //2

    CaixaTexto.bs_Fields.Add('(P.PRODUCT_STYLE + '' '' + P.PRODUCT_STYLE_NAME  + '' '' +  P.COLOR + '' '' + P.COLOR_NAME);PRODUCT_NAME;;' + inttostr(WIDTH_DESCRICAO));             //4
    CaixaTexto.bs_Fields.Add('P.SKU;SKU;;' + inttostr(WIDTH_DOCUMENTO));                                   //19

    CaixaTexto.bs_Fields.Add('PRODUCT_STYLE_NAME;#;;' + inttostr(WIDTH_DOCUMENTO));

    CaixaTexto.bs_Join :=  ' LEFT OUTER JOIN TBTYPEBRAND TP ON TP.ID_TYPEBRAND = P.ID_TYPE ' +
                           ' LEFT OUTER JOIN TBTYPEBRAND TS ON TS.ID_TYPEBRAND = P.STYLE ';

    CaixaTexto.bs_TextResult := 'PRODUCT_STYLE_NAME';
    CaixaTexto.bs_KeyField   := 'ID_PRODUCT';
  end
  else
  if TipoConsulta = TipoVendorPricingTable then
  begin

    CaixaTexto.bs_Caption := 'Pricing Table';
    CaixaTexto.bs_Table := 'TBPRICEITEM I With (NOLOCK)';



    CaixaTexto.bs_Fields.Add('I.ID_PRODUCT;ID;;' + inttostr(WIDTH_CODIGO));                           //0
    CaixaTexto.bs_Fields.Add('TP.DESCRIPTION;PRODUCT TYPE;;' + inttostr(WIDTH_DOCUMENTO));               //1
    CaixaTexto.bs_Fields.Add('TS.DESCRIPTION;PRODUCT STYLE;;' + inttostr(WIDTH_DOCUMENTO));              //2
    CaixaTexto.bs_Fields.Add('S.TRADININGNAME;MANUFACTURE;;' + inttostr(WIDTH_DOCUMENTO));               //3

    CaixaTexto.bs_Fields.Add('P.PRODUCT_STYLE;PRODUCT_STYLE;;' + inttostr(WIDTH_DOCUMENTO));             //4
    CaixaTexto.bs_Fields.Add('P.PRODUCT_STYLE_NAME;PRODUCT STYLE NAME;;' + inttostr(WIDTH_DOCUMENTO));   //5
    CaixaTexto.bs_Fields.Add('P.COLOR;COLOR;;' + inttostr(WIDTH_DOCUMENTO));                             //6
    CaixaTexto.bs_Fields.Add('P.COLOR_NAME;COLOR_NAME;;' + inttostr(WIDTH_DOCUMENTO));                   //7

    CaixaTexto.bs_Fields.Add('P.QTY;#;;' + inttostr(WIDTH_DOCUMENTO));                                   //8
    CaixaTexto.bs_Fields.Add('I.PRICE_FINAL;RATE;;' + inttostr(WIDTH_DOCUMENTO));                        //9
    CaixaTexto.bs_Fields.Add('P.STYLE;#;;' + inttostr(WIDTH_DOCUMENTO));                                 //10
    CaixaTexto.bs_Fields.Add('P.areaSquareFeetPerBox;#;;' + inttostr(WIDTH_DOCUMENTO));                  //11
    CaixaTexto.bs_Fields.Add('P.totalAreaSquareFeet;#;;' + inttostr(WIDTH_DOCUMENTO));                   //12
    CaixaTexto.bs_Fields.Add('P.areaSquareYardPerBox;#;;' + inttostr(WIDTH_DOCUMENTO));                  //13
    CaixaTexto.bs_Fields.Add('P.totalAreaSquareYard;#;;' + inttostr(WIDTH_DOCUMENTO));                   //14
    CaixaTexto.bs_Fields.Add('P.rollnumber;#;;' + inttostr(WIDTH_DOCUMENTO));                            //15
    CaixaTexto.bs_Fields.Add('P.rollnumberdialog;#;;' + inttostr(WIDTH_DOCUMENTO));                      //16
    CaixaTexto.bs_Fields.Add('S.NAMEBUSINESS;#;;' + inttostr(WIDTH_DOCUMENTO));                          //17
    CaixaTexto.bs_Fields.Add('S.TRADININGNAME;#;;' + inttostr(WIDTH_DOCUMENTO));                         //18
    CaixaTexto.bs_Fields.Add('P.SKU;#;;' + inttostr(WIDTH_DOCUMENTO));                                   //19
    CaixaTexto.bs_Fields.Add('I.ID_PRICELIST;#;;' + inttostr(WIDTH_DOCUMENTO));                          //20
    CaixaTexto.bs_Fields.Add('I.ID_SUPPLIER;#;;' + inttostr(WIDTH_DOCUMENTO));                           //21
    CaixaTexto.bs_Fields.Add('I.PRICE_MINIMUM;#;;' + inttostr(WIDTH_DOCUMENTO));                         //22
    CaixaTexto.bs_Fields.Add('P.PRODUCT_NAME;#;;' + inttostr(WIDTH_NOME220));                            //23
    CaixaTexto.bs_Fields.Add('P.TYPEOFPRODUCT;#;;' + inttostr(WIDTH_NOME220));                            //23



    CaixaTexto.bs_Join := ' LEFT OUTER JOIN TBSUPPLIER S ON S.ID_SUPPLIER = I.ID_SUPPLIER ' +
                          ' LEFT OUTER JOIN TBPRODUCT P ON P.ID_PRODUCT = I.ID_PRODUCT  ' +
                          ' LEFT OUTER JOIN TBTYPEBRAND TP ON TP.ID_TYPEBRAND = P.ID_TYPE ' +
                          ' LEFT OUTER JOIN TBTYPEBRAND TS ON TS.ID_TYPEBRAND = P.STYLE ';


    CaixaTexto.bs_TextResult := 'PRODUCT_NAME';
    CaixaTexto.bs_KeyField   := 'ID_PRODUCT';

  end
  else
  if TipoConsulta = TipoCustomer then
  begin

    CaixaTexto.bs_Caption := 'Customers';
    CaixaTexto.bs_Table := 'TBCUSTOMER C With (NOLOCK)';

    CaixaTexto.bs_Fields.Add('C.LAST_NAME;LastName;;' + inttostr(WIDTH_NOME220));           //0
    CaixaTexto.bs_Fields.Add('C.FIRST_NAME;First Name;;' + inttostr(WIDTH_NOME220));        //1
    CaixaTexto.bs_Fields.Add('C.Phone1;Phone #;;' + inttostr(WIDTH_NOME220));               //2
    CaixaTexto.bs_Fields.Add('C.Email;#;;' + inttostr(WIDTH_NOME220));                      //3
    CaixaTexto.bs_Fields.Add('A.ADDRESS1;#;;' + inttostr(WIDTH_NOME220));                   //4
    CaixaTexto.bs_Fields.Add('A.ZIPCODE;#;;' + inttostr(WIDTH_NOME220));                    //5
    CaixaTexto.bs_Fields.Add('A.CITY;City;;' + inttostr(WIDTH_NOME220));                    //6
    CaixaTexto.bs_Fields.Add('A.STATEE;ST;;' + inttostr(WIDTH_NOME220));                    //7
    CaixaTexto.bs_Fields.Add('v.NAME;#;;' + inttostr(WIDTH_NOME220));                       //8
    CaixaTexto.bs_Fields.Add('C.FOLDER;#;;' + inttostr(WIDTH_NOME220));                     //9
    CaixaTexto.bs_Fields.Add('C.ID_CONTRACTORS;#;;' + inttostr(WIDTH_NOME220));             //10
    CaixaTexto.bs_Fields.Add('C.ID_CUSTOMER;#;;' + inttostr(WIDTH_DOCUMENTO));              //11
    CaixaTexto.bs_Fields.Add('C.ID_COMPANY;#;;' + inttostr(WIDTH_DOCUMENTO));               //12
    CaixaTexto.bs_Fields.Add('C.TYPEPERSON;#;;' + inttostr(WIDTH_DOCUMENTO));               //13


    CaixaTexto.bs_Join := ' LEFT OUTER JOIN TBADDRESS A ON A.ID_CUSTOMER = C.ID_CUSTOMER ' +
                          ' INNER JOIN TBCONTRACTORS v on v.ID_CONTRACTORS = c.ID_CONTRACTORS ';

    CaixaTexto.bs_TextResult := 'LAST_NAME';
    CaixaTexto.bs_KeyField   := 'ID_CUSTOMER';

  end
  else
  if TipoConsulta = TipoCustomerCompany then
  begin

    CaixaTexto.bs_Caption := 'Customers';
    CaixaTexto.bs_Table := 'TBCUSTOMER C With (NOLOCK)';

    CaixaTexto.bs_Fields.Add('C.LAST_NAME;LastName;;' + inttostr(WIDTH_NOME220));           //0
    CaixaTexto.bs_Fields.Add('C.FIRST_NAME;First Name;;' + inttostr(WIDTH_NOME220));        //1
    CaixaTexto.bs_Fields.Add('C.Phone1;Phone #;;' + inttostr(WIDTH_NOME220));               //2
    CaixaTexto.bs_Fields.Add('C.Email;#;;' + inttostr(WIDTH_NOME220));                      //3
    CaixaTexto.bs_Fields.Add('A.ADDRESS1;#;;' + inttostr(WIDTH_NOME220));                   //4
    CaixaTexto.bs_Fields.Add('A.ZIPCODE;#;;' + inttostr(WIDTH_NOME220));                    //5
    CaixaTexto.bs_Fields.Add('A.CITY;City;;' + inttostr(WIDTH_NOME220));                    //6
    CaixaTexto.bs_Fields.Add('A.STATEE;ST;;' + inttostr(WIDTH_NOME220));                    //7
    CaixaTexto.bs_Fields.Add('v.NAME;#;;' + inttostr(WIDTH_NOME220));                       //8
    CaixaTexto.bs_Fields.Add('C.FOLDER;#;;' + inttostr(WIDTH_NOME220));                     //9
    CaixaTexto.bs_Fields.Add('C.ID_CONTRACTORS;#;;' + inttostr(WIDTH_NOME220));             //10
    CaixaTexto.bs_Fields.Add('C.ID_CUSTOMER;#;;' + inttostr(WIDTH_DOCUMENTO));              //11
    CaixaTexto.bs_Fields.Add('C.ID_COMPANY;#;;' + inttostr(WIDTH_DOCUMENTO));               //12
    CaixaTexto.bs_Fields.Add('C.TYPEPERSON;#;;' + inttostr(WIDTH_DOCUMENTO));               //13
    CaixaTexto.bs_Fields.Add('A.COUNTY;#;;' + inttostr(WIDTH_DOCUMENTO));                   //14

    CaixaTexto.bs_Join := ' LEFT OUTER JOIN TBADDRESS A ON A.ID_CUSTOMER = C.ID_CUSTOMER ' +
                          ' LEFT OUTER JOIN TBCONTRACTORS v on v.ID_CONTRACTORS = c.ID_CONTRACTORS ';


    CaixaTexto.bs_Filter := 'C.' + DBDados.varReturnCompanies;

    CaixaTexto.bs_TextResult := 'LAST_NAME';
    CaixaTexto.bs_KeyField   := 'ID_CUSTOMER';

  end
  else
  if TipoConsulta = TipoContractor then
  begin
    CaixaTexto.bs_Caption := 'Contractors';
    CaixaTexto.bs_Table := 'TBCONTRACTORS C With (NOLOCK)';

    CaixaTexto.bs_Fields.Add('C.Name;Vendor Name;;' + inttostr(WIDTH_NOME220));                    //0
    CaixaTexto.bs_Fields.Add('A.Name;Position;;' + inttostr(WIDTH_NOME220));                    //0
    CaixaTexto.bs_Fields.Add('C.Phone;Phone #;;' + inttostr(WIDTH_NOME220));                    //0
    CaixaTexto.bs_Fields.Add('C.Email;Email;;' + inttostr(WIDTH_NOME220));

    CaixaTexto.bs_Fields.Add('C.ID_CONTRACTORS;#;;' + inttostr(WIDTH_DOCUMENTO));

    CaixaTexto.bs_Join := ' inner join TBPOSITION A on A.ID_POSITION = C.ID_POSITION ';


    CaixaTexto.bs_TextResult := 'Name';
    CaixaTexto.bs_KeyField   := 'ID_CONTRACTORS';

  end
  else
  if TipoConsulta = TipoPricingTable then
  begin
    CaixaTexto.bs_Caption := 'Pricing Table';
    CaixaTexto.bs_Table := 'TBPRICELIST P With (NOLOCK)';

    CaixaTexto.bs_Fields.Add('A.COMPANYNAME;Company Name;;' + inttostr(WIDTH_NOME220));                    //0
    CaixaTexto.bs_Fields.Add('P.NAME;Princig Table Name;;' + inttostr(WIDTH_NOME220));                    //0
    CaixaTexto.bs_Fields.Add('P.STARTDATE;Start Date;;' + inttostr(WIDTH_NOME220));
    CaixaTexto.bs_Fields.Add('P.EXPIREDDATE;Expired Date;;' + inttostr(WIDTH_NOME220));

    CaixaTexto.bs_Fields.Add('CASE ' +
          'WHEN (P.ID_LOCATION=''1'') THEN ''SHOW ROOM'' ' +
          'WHEN (P.ID_LOCATION=''2'') THEN ''WAREHOUSE'' ' +
          'END;Location;;' + inttostr(WIDTH_DOCUMENTO));
    CaixaTexto.bs_Fields.Add('P.ID_PRICELIST;#;;' + inttostr(WIDTH_DOCUMENTO));
    CaixaTexto.bs_Fields.Add('P.ID_COMPANY;#;;' + inttostr(WIDTH_DOCUMENTO));

    CaixaTexto.bs_Join := ' inner join  TBCOMPANY A on A.ID_COMPANY = P.ID_COMPANY ';


    CaixaTexto.bs_TextResult := 'NAME';
    CaixaTexto.bs_KeyField   := 'ID_PRICELIST';
  end
  else
  if TipoConsulta = TipoSupplier then
  begin
    CaixaTexto.bs_Caption := 'Suppliers';
    CaixaTexto.bs_Table := 'TBSUPPLIER S With (NOLOCK)';

    CaixaTexto.bs_Fields.Add('S.NAMEBUSINESS;Supplier Name;;' + inttostr(WIDTH_NOME220));                    //0
    CaixaTexto.bs_Fields.Add('A.CITY;City;;' + inttostr(WIDTH_DOCUMENTO));                    //0
    CaixaTexto.bs_Fields.Add('A.STATEE;ST;;' + inttostr(WIDTH_DOCUMENTO));                    //0
    CaixaTexto.bs_Fields.Add('A.ZIPCODE;ZipCode;;' + inttostr(WIDTH_DOCUMENTO));
                      //0

    CaixaTexto.bs_Fields.Add('S.ID_SUPPLIER;#;;' + inttostr(WIDTH_DOCUMENTO));

    CaixaTexto.bs_Join := ' left outer join  TBADDRESS A on A.ID_SUPPLIER = S.ID_SUPPLIER ';

    CaixaTexto.bs_TextResult := 'NAMEBUSINESS';
    CaixaTexto.bs_KeyField   := 'ID_SUPPLIER';


  end
  else
  if TipoConsulta = TipoOperacao then
  begin
    CaixaTexto.bs_Caption := 'Opera��o';
    CaixaTexto.bs_Table := 'Operacao';

    CaixaTexto.bs_Fields.Add('DESCRICAO;Opera��o;;' + inttostr(WIDTH_NOME220));                    //0
    CaixaTexto.bs_Fields.Add('CodOperacao;#;;' + inttostr(WIDTH_DOCUMENTO));

    CaixaTexto.bs_TextResult := 'DESCRICAO';
    CaixaTexto.bs_KeyField   := 'CodOperacao';
  end
  else
  if TipoConsulta = TipoPerfil then
  begin
    CaixaTexto.bs_Caption := 'Perfil';
    CaixaTexto.bs_Table := 'Perfil With (NOLOCK)';

    CaixaTexto.bs_Fields.Add('DESCRICAO;Perfil;;' + inttostr(WIDTH_NOME220));                    //0
    CaixaTexto.bs_Fields.Add('CodPerfil;#;;' + inttostr(WIDTH_DOCUMENTO));

    CaixaTexto.bs_TextResult := 'DESCRICAO';
    CaixaTexto.bs_KeyField   := 'CodPerfil';
  end
  else
  if TipoConsulta = TipoPeriodicidadeID then
  begin
    CaixaTexto.bs_Caption := 'Periodicidade';
    CaixaTexto.bs_Table := 'TRE_PERIODICIDADE With (NOLOCK)';

    CaixaTexto.bs_Fields.Add('DESCRICAO;Nome;;' + inttostr(WIDTH_NOME220));                    //0
    CaixaTexto.bs_Fields.Add('PERIODICIDADE_ID;#;;' + inttostr(WIDTH_DOCUMENTO));

    CaixaTexto.bs_TextResult := 'PERIODICIDADE_ID';
    CaixaTexto.bs_KeyField   := 'PERIODICIDADE_ID';
  end
  else
  if TipoConsulta = TipoPeriodicidade then
  begin
    CaixaTexto.bs_Caption := 'Periodicidade';
    CaixaTexto.bs_Table := 'TRE_PERIODICIDADE With (NOLOCK)';

    CaixaTexto.bs_Fields.Add('PERIODICIDADE_ID;Codigo;;' + inttostr(WIDTH_DOCUMENTO));
    CaixaTexto.bs_Fields.Add('DESCRICAO;Nome;;' + inttostr(WIDTH_NOME220));                    //0


    CaixaTexto.bs_TextResult := 'DESCRICAO';
    CaixaTexto.bs_KeyField   := 'PERIODICIDADE_ID';
  end
  else
  if TipoConsulta = TipoTpTreinamentoID then
  begin
    CaixaTexto.bs_Caption := 'Tipo de Treinamento';
    CaixaTexto.bs_Table := 'TRE_TIPOTREINAMENTO With (NOLOCK)';

    CaixaTexto.bs_Fields.Add('DESCRICAO;Nome;;' + inttostr(WIDTH_NOME220));                    //0
    CaixaTexto.bs_Fields.Add('TRE_TIPOTREINAMENTO_ID;#;;' + inttostr(WIDTH_DOCUMENTO));

    CaixaTexto.bs_TextResult := 'TRE_TIPOTREINAMENTO_ID';
    CaixaTexto.bs_KeyField   := 'TRE_TIPOTREINAMENTO_ID';
  end
  else
  if TipoConsulta = TipoTreinamento then
  begin
    CaixaTexto.bs_Caption := 'Treinmento';
    CaixaTexto.bs_Table := 'TRE_TREINAMENTO T With (NOLOCK)';

    CaixaTexto.bs_Fields.Add('C.CUR_NOMCURSO;Treinamento;;' + inttostr(WIDTH_NOME220));
    CaixaTexto.bs_Fields.Add('T.TRE_DTREALIZACAO;Data;;' + inttostr(WIDTH_NOME220));
    CaixaTexto.bs_Fields.Add('T.TRE_TREINAMENTO_ID;#;;' + inttostr(WIDTH_DOCUMENTO));

    CaixaTexto.bs_Join := ' Inner Join TRE_CURSO c on c.CUR_ID = T.CUR_ID ';
    CaixaTexto.bs_TextResult := 'CUR_NOMCURSO';
    CaixaTexto.bs_KeyField   := 'TRE_TREINAMENTO_ID';

  end
  else
  if TipoConsulta = TipoTreinamentoID then
  begin
    CaixaTexto.bs_Caption := 'Treinmento';
    CaixaTexto.bs_Table := 'TRE_TREINAMENTO T With (NOLOCK)';

    CaixaTexto.bs_Fields.Add('T.TRE_TREINAMENTO_ID;Codigo;;' + inttostr(WIDTH_DOCUMENTO));
    CaixaTexto.bs_Fields.Add('C.CUR_NOMCURSO;Treinamento;;' + inttostr(WIDTH_NOME220));
    CaixaTexto.bs_Fields.Add('T.TRE_DTREALIZACAO;Data;;' + inttostr(WIDTH_NOME220));


    CaixaTexto.bs_Join := ' Inner Join TRE_CURSO c on c.CUR_ID = T.CUR_ID ';
    CaixaTexto.bs_TextResult := 'TRE_TREINAMENTO_ID';
    CaixaTexto.bs_KeyField   := 'TRE_TREINAMENTO_ID';

  end
  else


  if TipoConsulta = TipoFornecedor then
  begin
    CaixaTexto.bs_Caption := 'Fornecedores';
    CaixaTexto.bs_Table := 'TRE_EMPRESA With (NOLOCK)';

    CaixaTexto.bs_Fields.Add('TRE_EMPRESA.EMP_NOMEMPRESA;Nome;;' + inttostr(WIDTH_NOME220));                    //0
    CaixaTexto.bs_Fields.Add('TRE_EMPRESA.EMP_ID;#;;' + inttostr(WIDTH_DOCUMENTO));
    CaixaTexto.bs_Fields.Add('c.UF;UF;;' + inttostr(WIDTH_NOME220));
    CaixaTexto.bs_Fields.Add('c.CEP;CEP;;' + inttostr(WIDTH_NOME220));

    CaixaTexto.bs_Join := ' left outer Join CEP c on c.IDCEP = TRE_EMPRESA.IDCEP ';



    CaixaTexto.bs_TextResult := 'EMP_NOMEMPRESA';
    CaixaTexto.bs_KeyField   := 'EMP_ID';
  end
  else
  if TipoConsulta = TipoFornecedorID then
  begin
    CaixaTexto.bs_Caption := 'Fornecedores';
    CaixaTexto.bs_Table := 'TRE_EMPRESA With (NOLOCK)';

    CaixaTexto.bs_Fields.Add('TRE_EMPRESA.EMP_NOMEMPRESA;Nome;;' + inttostr(WIDTH_NOME220));                    //0
    CaixaTexto.bs_Fields.Add('TRE_EMPRESA.EMP_ID;#;;' + inttostr(WIDTH_DOCUMENTO));
    CaixaTexto.bs_Fields.Add('c.UF;UF;;' + inttostr(WIDTH_NOME220));
    CaixaTexto.bs_Fields.Add('c.CEP;CEP;;' + inttostr(WIDTH_NOME220));

    CaixaTexto.bs_Join := ' left outer Join CEP c on c.IDCEP = TRE_EMPRESA.IDCEP ';

    CaixaTexto.bs_TextResult := 'EMP_ID';
    CaixaTexto.bs_KeyField   := 'EMP_ID';
  end
  else

  if TipoConsulta = TipoCurso then
  begin
    CaixaTexto.bs_Caption := 'Curso';
    CaixaTexto.bs_Table := 'TRE_CURSO C With (NOLOCK)';

    CaixaTexto.bs_Fields.Add('C.CUR_NOMCURSO;Treinamento;;' + inttostr(WIDTH_NOME220));                    //0
    CaixaTexto.bs_Fields.Add('C.CUR_CARGAHORARIA;Carga Horaria;;' + inttostr(WIDTH_NOME220));                    //0
    CaixaTexto.bs_Fields.Add('C.CUR_ID;Curso ID;;' + inttostr(WIDTH_DOCUMENTO));

    CaixaTexto.bs_TextResult := 'CUR_NOMCURSO';
    CaixaTexto.bs_KeyField   := 'CUR_ID';

  end
  else
  if TipoConsulta = TipoCursoID then
  begin
      CaixaTexto.bs_Caption := 'Curso';
    CaixaTexto.bs_Table := 'TRE_CURSO C With (NOLOCK)';

    CaixaTexto.bs_Fields.Add('C.CUR_NOMCURSO;Treinamento;;' + inttostr(WIDTH_NOME220));                    //0
    CaixaTexto.bs_Fields.Add('C.CUR_ID;#;;' + inttostr(WIDTH_DOCUMENTO));

    CaixaTexto.bs_TextResult := 'CUR_ID';
    CaixaTexto.bs_KeyField   := 'CUR_ID';
  end
  else

  if TipoConsulta = TipoInstrutor then
  begin
    CaixaTexto.bs_Caption := 'Instrutor';
    CaixaTexto.bs_Table := 'TRE_INSTRUTOR I With (NOLOCK)';

    CaixaTexto.bs_Fields.Add('I.INS_NOMINSTRUTOR;Instrutor;;' + inttostr(WIDTH_NOME220));                    //0
    CaixaTexto.bs_Fields.Add('I.INS_ID;#;;' + inttostr(WIDTH_DOCUMENTO));
    CaixaTexto.bs_Fields.Add('I.EMP_ID;#;;' + inttostr(WIDTH_DOCUMENTO));
    CaixaTexto.bs_Fields.Add('c.UF;UF;;' + inttostr(WIDTH_NOME220));
    CaixaTexto.bs_Fields.Add('c.CEP;CEP;;' + inttostr(WIDTH_NOME220));

    CaixaTexto.bs_Join := ' left outer Join CEP c on c.IDCEP = I.IDCEP ';

    CaixaTexto.bs_TextResult := 'INS_NOMINSTRUTOR';
    CaixaTexto.bs_KeyField   := 'INS_ID';

  end
  else
  if TipoConsulta = TipoInstrutorID then
  begin
    CaixaTexto.bs_Caption := 'Instrutor';
    CaixaTexto.bs_Table   := 'TRE_INSTRUTOR I With (NOLOCK)';

    CaixaTexto.bs_Fields.Add('I.INS_NOMINSTRUTOR;Instrutor;;' + inttostr(WIDTH_NOME220));                    //0
    CaixaTexto.bs_Fields.Add('I.INS_ID;#;;' + inttostr(WIDTH_DOCUMENTO));
    CaixaTexto.bs_Fields.Add('I.EMP_ID;#;;' + inttostr(WIDTH_DOCUMENTO));
    CaixaTexto.bs_Fields.Add('c.UF;UF;;' + inttostr(WIDTH_NOME220));
    CaixaTexto.bs_Fields.Add('c.CEP;CEP;;' + inttostr(WIDTH_NOME220));

    CaixaTexto.bs_Join := ' left outer Join CEP c on c.IDCEP = I.IDCEP ';

    CaixaTexto.bs_TextResult := 'INS_ID';
    CaixaTexto.bs_KeyField   := 'INS_ID';

  end
  else
  if TipoConsulta = TipoParticipante then
  begin
    CaixaTexto.bs_Caption := 'Participante';
    CaixaTexto.bs_Table := 'TRE_FUNCIONARIO P With (NOLOCK)';

    CaixaTexto.bs_Fields.Add('F.AliasEmpresa;EMPRESA;;' + inttostr(WIDTH_NOME220));                    //0
    CaixaTexto.bs_Fields.Add('P.FUN_NOME;Participante;;' + inttostr(WIDTH_NOME220));                    //0
    CaixaTexto.bs_Fields.Add('P.FUN_MATRICULA;Matricula;;' + inttostr(WIDTH_DOCUMENTO));
    CaixaTexto.bs_Fields.Add('C.TRE_CARGO_ID;Cargo ID;;' + inttostr(WIDTH_DOCUMENTO));
    CaixaTexto.bs_Fields.Add('C.DESCRICAO;Cargo;;' + inttostr(WIDTH_NOME220));
    CaixaTexto.bs_Fields.Add('CC.TRE_CENTROCENTRO;Centro de Custo ID;;' + inttostr(WIDTH_DOCUMENTO));
    CaixaTexto.bs_Fields.Add('CC.DESCRICAO;Centro de Custo;;' + inttostr(WIDTH_NOME220));

    CaixaTexto.bs_Join := ' left outer join  TRE_CARGO C on C.TRE_CARGO_ID = P.TRE_CARGO_ID ' +
                          ' left outer join  TRE_CENTROCUSTO CC on CC.TRE_CENTROCENTRO = P.TRE_CENTROCENTRO ' +
                          ' left outer join  FILIAL F on F.CODFILIAL = P.CODFILIAL ';


    CaixaTexto.bs_TextResult := 'FUN_NOME';
    CaixaTexto.bs_KeyField   := 'FUN_MATRICULA';
  end
  else
  if TipoConsulta = TipoParticipanteFILIAL then
  begin
    CaixaTexto.bs_Caption := 'Participante';
    CaixaTexto.bs_Table := 'TRE_FUNCIONARIO P With (NOLOCK)';

    CaixaTexto.bs_Fields.Add('F.AliasEmpresa;EMPRESA;;' + inttostr(WIDTH_NOME220));                    //0
    CaixaTexto.bs_Fields.Add('P.FUN_NOME;Participante;;' + inttostr(WIDTH_NOME220));                    //0
    CaixaTexto.bs_Fields.Add('P.FUN_MATRICULA;Matricula;;' + inttostr(WIDTH_DOCUMENTO));

    CaixaTexto.bs_Join := ' left outer join  FILIAL F on F.CODFILIAL = P.CODFILIAL ';


    CaixaTexto.bs_TextResult := 'FUN_NOME';
    CaixaTexto.bs_KeyField   := 'FUN_MATRICULA';
  end

  else
    if TipoConsulta = TipoParticipanteID then
  begin
    CaixaTexto.bs_Caption := 'Participante';
    CaixaTexto.bs_Table := 'TRE_FUNCIONARIO P With (NOLOCK)';

    CaixaTexto.bs_Fields.Add('P.FUN_FUNCIONARIO_ID;Codigo;;' + inttostr(WIDTH_DOCUMENTO));
    CaixaTexto.bs_Fields.Add('P.FUN_NOME;Participante;;' + inttostr(WIDTH_NOME220));                    //0
    CaixaTexto.bs_Fields.Add('P.FUN_MATRICULA;Matricula;;' + inttostr(WIDTH_DOCUMENTO));
    CaixaTexto.bs_Fields.Add('C.DESCRICAO;Cargo;;' + inttostr(WIDTH_DOCUMENTO));
    CaixaTexto.bs_Fields.Add('P.CODFILIAL;#;;' + inttostr(WIDTH_DOCUMENTO));


    CaixaTexto.bs_Join := ' left outer join  TRE_CARGO C on C.TRE_CARGO_ID = P.TRE_CARGO_ID ';

    CaixaTexto.bs_TextResult := 'FUN_FUNCIONARIO_ID';
    CaixaTexto.bs_KeyField   := 'FUN_MATRICULA';
  end
  else
  if TipoConsulta = TipoParticipanteCad then
  begin
    CaixaTexto.bs_Caption := 'Participante';
    CaixaTexto.bs_Table := 'TRE_FUNCIONARIO P With (NOLOCK)';

    CaixaTexto.bs_Fields.Add('P.FUN_FUNCIONARIO_ID;Codigo;;' + inttostr(WIDTH_DOCUMENTO));
    CaixaTexto.bs_Fields.Add('P.FUN_NOME;Participante;;' + inttostr(WIDTH_NOME220));                    //0
    CaixaTexto.bs_Fields.Add('P.FUN_MATRICULA;Matricula;;' + inttostr(WIDTH_DOCUMENTO));
    CaixaTexto.bs_Fields.Add('C.DESCRICAO;Cargo;;' + inttostr(WIDTH_DOCUMENTO));
    CaixaTexto.bs_Fields.Add('P.CODFILIAL;#;;' + inttostr(WIDTH_DOCUMENTO));


    CaixaTexto.bs_Join := ' left outer join  TRE_CARGO C on C.TRE_CARGO_ID = P.TRE_CARGO_ID ';

    CaixaTexto.bs_TextResult := 'FUN_FUNCIONARIO_ID';
    CaixaTexto.bs_KeyField   := 'FUN_FUNCIONARIO_ID';
  end

  else


  if TipoConsulta = TipoNFE then
  begin
    CaixaTexto.bs_Caption := 'Nota Fiscal de Sa�da';
    CaixaTexto.bs_Table   := 'NFE n ';

    CaixaTexto.bs_Join := ' Inner Join Clientes c on c.CodCliente = n.CodCliente ';

    CaixaTexto.bs_Fields.Add('c.Razao;Cliente;;' + inttostr(WIDTH_NOME220));            //0
    CaixaTexto.bs_Fields.Add('n.NumNF;Nota Fiscal;;' + inttostr(Width_Codigo));           //1
    CaixaTexto.bs_Fields.Add('n.CodFilial;Empresa;;' + inttostr(Width_Codigo));           //2
    CaixaTexto.bs_Fields.Add('n.Chave_Nfe;Chave Nfe;;' + inttostr(WIDTH_NOME220));        //3
    CaixaTexto.bs_Fields.Add('n.DataEmissao;Data Emiss�o;;' + inttostr(Width_Codigo));    //4
    CaixaTexto.bs_Fields.Add('c.CodCliente;#;;' + inttostr(WIDTH_NOME220));            //5

    CaixaTexto.bs_Filter := ' N.NFE = ''Transferido'' ';

    CaixaTexto.bs_TextResult := 'NumNF';
    CaixaTexto.bs_KeyField   := 'NumNF';


  end
  else
  if TipoConsulta = TipoChaveReferencia then
  begin
    CaixaTexto.bs_Caption := 'Chave de Refer�ncia';
    CaixaTexto.bs_Table   := 'VW_NF_ChaveNfe_Entrada_Saida ';

    CaixaTexto.bs_Fields.Add('Razao;Fornecedor/Cliente;;' + inttostr(WIDTH_NOME220));            //0
    CaixaTexto.bs_Fields.Add('NumNF;Nota Fiscal;;' + inttostr(Width_Codigo));           //1
    CaixaTexto.bs_Fields.Add('CodFilial;Empresa;;' + inttostr(Width_Codigo));           //2
    CaixaTexto.bs_Fields.Add('Chave_Nfe;Chave Nfe;;' + inttostr(WIDTH_NOME220));        //3
    CaixaTexto.bs_Fields.Add('DataEmissao;Data Emiss�o;;' + inttostr(Width_Codigo));    //4
    CaixaTexto.bs_Fields.Add('CliFor;#;;' + inttostr(WIDTH_NOME220));            //5
    CaixaTexto.bs_Fields.Add('TpNF;Tipo;;' + inttostr(Width_Codigo));    //6

    CaixaTexto.bs_TextResult := 'Chave_Nfe';
    CaixaTexto.bs_KeyField   := 'Chave_Nfe';

  end
  else
  if TipoConsulta = TipoMensagemPadrao then
  begin
    CaixaTexto.bs_Caption := 'Tabela de Mensagem Padr�o NFE';
    CaixaTexto.bs_Table   := 'mensagempadrao ';

    CaixaTexto.bs_Fields.Add('CodMens;Codigo;;' + inttostr(Width_Codigo));       //0
    CaixaTexto.bs_Fields.Add('Mensagem1;Mensagem1;;' + inttostr(WIDTH_NOME220));           //1
    CaixaTexto.bs_Fields.Add('Mensagem2;Mensagem2;;' + inttostr(WIDTH_NOME220));           //1

    CaixaTexto.bs_TextResult := 'Mensagem1';
    CaixaTexto.bs_KeyField   := 'CodMens';


  end
  else

  if TipoConsulta = TipoFinalidade then
  begin
    CaixaTexto.bs_Caption := 'Tabela de Finalidade';
    CaixaTexto.bs_Table   := 'TipoCliente ';

    CaixaTexto.bs_Fields.Add('CodTipoCli;Codigo;;' + inttostr(Width_Codigo));       //0
    CaixaTexto.bs_Fields.Add('DescTipoCli;Finalidade;;' + inttostr(WIDTH_NOME220));           //1


    CaixaTexto.bs_TextResult := 'DescTipoCli';
    CaixaTexto.bs_KeyField   := 'CodTipoCli';

  end
  else
  if TipoConsulta = TipoUsuario then
  begin
    CaixaTexto.bs_Caption := 'Tabela de Usu�rios';
    CaixaTexto.bs_Table   := 'usuario';

    CaixaTexto.bs_Fields.Add('codusuario;Codigo;;' + inttostr(Width_Codigo));       //0
    CaixaTexto.bs_Fields.Add('nome;Nome do Usuario;;' + inttostr(WIDTH_NOME220));           //1


    CaixaTexto.bs_TextResult := 'nome';
    CaixaTexto.bs_KeyField   := 'codusuario';
  end
  else
  if TipoConsulta = TipoUsuarioID then
  begin
    CaixaTexto.bs_Caption := 'Tabela de Usu�rios';
    CaixaTexto.bs_Table   := 'USUARIO';

    CaixaTexto.bs_Fields.Add('CodUsuario;Codigo;;' + inttostr(Width_Codigo));       //0
    CaixaTexto.bs_Fields.Add('Nome;Nome do Usuario;;' + inttostr(WIDTH_NOME220));           //1


    CaixaTexto.bs_TextResult := 'CodUsuario';
    CaixaTexto.bs_KeyField   := 'CodUsuario';
  end
  else


  if TipoConsulta = TipoFilial then
  begin
    CaixaTexto.bs_Caption := 'Tabela de Empresa';
    CaixaTexto.bs_Table   := 'filial ';

    CaixaTexto.bs_Fields.Add('filial.codfilial;Codigo;;' + inttostr(Width_Codigo));       //0
    CaixaTexto.bs_Fields.Add('filial.aliasempresa;Nome Fantasia;;' + inttostr(WIDTH_NOME220));
    CaixaTexto.bs_Fields.Add('filial.cidade;Cidade;;' + inttostr(WIDTH_NOME220));
    CaixaTexto.bs_Fields.Add('filial.uf;UF;;' + inttostr(WIDTH_NOME220));

    CaixaTexto.bs_TextResult := 'aliasempresa';
    CaixaTexto.bs_KeyField   := 'codfilial';

  end
  else
  if TipoConsulta = TipoFilialID then
  begin
    CaixaTexto.bs_Caption := 'Tabela de Empresa';
    CaixaTexto.bs_Table   := 'FILIAL ';

    CaixaTexto.bs_Fields.Add('FILIAL.CodFilial;Codigo;;' + inttostr(Width_Codigo));       //0
    CaixaTexto.bs_Fields.Add('FILIAL.AliasEmpresa;Nome Fantasia;;' + inttostr(WIDTH_NOME220));
    CaixaTexto.bs_Fields.Add('c.Localidade;Cidade;;' + inttostr(WIDTH_NOME220));
    CaixaTexto.bs_Fields.Add('c.UF;UF;;' + inttostr(WIDTH_NOME220));
    CaixaTexto.bs_Fields.Add('c.CEP;CEP;;' + inttostr(WIDTH_NOME220));


    CaixaTexto.bs_Join := ' left outer Join CEP c on c.IDCEP = FILIAL.IDCEP ';


    CaixaTexto.bs_TextResult := 'CodFilial';
    CaixaTexto.bs_KeyField   := 'CodFilial';

  end


  else
  if TipoConsulta = TipoCNAE then
  begin
    CaixaTexto.bs_Caption := 'Tabela CNAE';
    CaixaTexto.bs_Table   := 'CNAE  With (NOLOCK)';

    CaixaTexto.bs_Fields.Add('subclasse;SubClasse;;' + inttostr(Width_Codigo));       //0
    CaixaTexto.bs_Fields.Add('denominacao;Denomina��o;;' + inttostr(WIDTH_NOME220));           //1

    CaixaTexto.bs_Filter := ' Subclasse is not null ';

    CaixaTexto.bs_TextResult := 'denominacao';
    CaixaTexto.bs_KeyField   := 'subclasse';

  end
  else
  if TipoConsulta = TipoNatureza then
  begin
    CaixaTexto.bs_Caption := 'Natureza';
    CaixaTexto.bs_Table   := 'NATUREZA  With (NOLOCK)';


    CaixaTexto.bs_Fields.Add('CODNATUREZA;Codigo;;' + inttostr(Width_Codigo));       //0
    CaixaTexto.bs_Fields.Add('DESCNATOPERACAO;Descri��o da Natureza;;' + inttostr(WIDTH_NOME220));           //1
    CaixaTexto.bs_Fields.Add('CFOP1;CFOP Saida;;' + inttostr(WIDTH_NOME220));           //2
    CaixaTexto.bs_Fields.Add('CFOP2;CFOP Entrada;;' + inttostr(WIDTH_NOME220));           //3
    CaixaTexto.bs_Fields.Add('TIPO;#;;' + inttostr(WIDTH_NOME220));           //5
    CaixaTexto.bs_Fields.Add('(cast(CODNATUREZA as varchar) +'' - ''+ DESCNATOPERACAO) as DESCRICAO;#');      // 16


    CaixaTexto.bs_TextResult := 'DESCRICAO';
    CaixaTexto.bs_KeyField   := 'CODNATUREZA';

  end
  else
  if TipoConsulta = TipoContatoCliente then
  begin
    CaixaTexto.bs_Caption := 'Contatos';
    CaixaTexto.bs_Table   := 'Contatos_Clientes cc With (NOLOCK)';

    CaixaTexto.bs_Join := ' left outer join Funcao f on f.CodFuncao = cc. CodFuncao ' +
                          ' left outer join Profissao p on p.CodProfissao = cc.CodProfissao ';

    CaixaTexto.bs_Fields.Add('cc.Chaveseq;Codigo;;' + inttostr(Width_Codigo));       //0
    CaixaTexto.bs_Fields.Add('cc.Nome_3;Nome do Contato;;' + inttostr(WIDTH_NOME220));           //1
    CaixaTexto.bs_Fields.Add('f.DescFuncao;Cargo;;' + inttostr(WIDTH_NOME220));
    CaixaTexto.bs_Fields.Add('p.DescProfissao;Profiss�o;;' + inttostr(WIDTH_NOME220));
    CaixaTexto.bs_Fields.Add('cc.CodCliente;#;;' + inttostr(WIDTH_NOME220));
    CaixaTexto.bs_Fields.Add('cc.Chaveseq;#;;' + inttostr(WIDTH_NOME220));

    CaixaTexto.bs_TextResult := 'Nome_3';
    CaixaTexto.bs_KeyField   := 'cc.Chaveseq';
  end
  else
  if TipoConsulta = TipoContatoFornecedor then
  begin
    CaixaTexto.bs_Caption := 'Contatos';
    CaixaTexto.bs_Table   := 'Contatos_Fornecedores cf With (NOLOCK)';

    CaixaTexto.bs_Join := ' left outer join Funcao f on f.CodFuncao = cf. CodFuncao ' +
                          ' left outer join Profissao p on p.CodProfissao = cf.CodProfissao ';

    CaixaTexto.bs_Fields.Add('cf.Chaveseq;Codigo;;' + inttostr(Width_Codigo));       //0
    CaixaTexto.bs_Fields.Add('cf.Nome_3;Nome do Contato;;' + inttostr(WIDTH_NOME220));           //1
    CaixaTexto.bs_Fields.Add('f.DescFuncao;Cargo;;' + inttostr(WIDTH_NOME220));
    CaixaTexto.bs_Fields.Add('p.DescProfissao;Profiss�o;;' + inttostr(WIDTH_NOME220));
    CaixaTexto.bs_Fields.Add('cf.CodFornecedor;#;;' + inttostr(WIDTH_NOME220));
    CaixaTexto.bs_Fields.Add('cf.Chaveseq;#;;' + inttostr(WIDTH_NOME220));

    CaixaTexto.bs_TextResult := 'Nome_3';
    CaixaTexto.bs_KeyField   := 'cf.Chaveseq';

  end
  else
  if TipoConsulta = TipoCargoID then
  begin
    CaixaTexto.bs_Caption := 'Cargos';
    CaixaTexto.bs_Table   := 'TRE_CARGO With (NOLOCK)';

    CaixaTexto.bs_Fields.Add('TRE_CARGO_ID;Codigo;;' + inttostr(Width_Codigo));           //1
    CaixaTexto.bs_Fields.Add('DESCRICAO;Nome do Cargo;;' + inttostr(WIDTH_NOME220));           //1

    CaixaTexto.bs_OrderBy := 'DESCRICAO';
   // CaixaTexto.bs_Distinct := True;

    CaixaTexto.bs_TextResult := 'TRE_CARGO_ID';
    CaixaTexto.bs_KeyField   := 'TRE_CARGO_ID';
  end
  else
  if TipoConsulta = TipoCargo then
  begin
    CaixaTexto.bs_Caption := 'Cargos';
    CaixaTexto.bs_Table   := 'TRE_CARGO With (NOLOCK)';

    CaixaTexto.bs_Fields.Add('TRE_CARGO_ID;Codigo;;' + inttostr(Width_Codigo));           //1
    CaixaTexto.bs_Fields.Add('DESCRICAO;Nome do Cargo;;' + inttostr(WIDTH_NOME220));           //1

    CaixaTexto.bs_OrderBy := 'DESCRICAO';
   // CaixaTexto.bs_Distinct := True;

    CaixaTexto.bs_TextResult := 'DESCRICAO';
    CaixaTexto.bs_KeyField   := 'TRE_CARGO_ID';
  end
  else
  if TipoConsulta = TipoFuncao then
  begin
    CaixaTexto.bs_Caption := 'Func�o';
    CaixaTexto.bs_Table   := 'funcao';

    CaixaTexto.bs_Fields.Add('codfuncao;Codigo;;' + inttostr(Width_Codigo));           //1
    CaixaTexto.bs_Fields.Add('descfuncao;Nome do Cargo;;' + inttostr(WIDTH_NOME220));           //1

    CaixaTexto.bs_OrderBy := 'descfuncao';
   // CaixaTexto.bs_Distinct := True;

    CaixaTexto.bs_TextResult := 'descfuncao';
    CaixaTexto.bs_KeyField   := 'codfuncao';
  end
  else
  if TipoConsulta = TipoProfissao then
  begin
    CaixaTexto.bs_Caption := 'Profiss�o';
    CaixaTexto.bs_Table   := 'profissao';

    CaixaTexto.bs_Fields.Add('codprofissao;Codigo;;' + inttostr(Width_Codigo));       //0
    CaixaTexto.bs_Fields.Add('descprofissao;Nome da Profiss�o;;' + inttostr(WIDTH_NOME220));           //1

    CaixaTexto.bs_OrderBy := 'descprofissao';

    CaixaTexto.bs_TextResult := 'descprofissao';
    CaixaTexto.bs_KeyField   := 'codprofissao';
  end
  else
  if TipoConsulta = TipoMarca then
  begin
    CaixaTexto.bs_Caption := 'Tabala de Tipo de Marcas';
    CaixaTexto.bs_Table   := 'MarcaTipo With (NOLOCK)';

    CaixaTexto.bs_Fields.Add('IDMarcaTipo;Codigo;;' + inttostr(Width_Codigo));       //0
    CaixaTexto.bs_Fields.Add('Descricao;Nome do Tipo da Marca;;' + inttostr(WIDTH_NOME220));           //1

    CaixaTexto.bs_OrderBy := 'Descricao';

    CaixaTexto.bs_TextResult := 'Descricao';
    CaixaTexto.bs_KeyField   := 'IDMarcaTipo';
  end
  else
  if TipoConsulta = TipoMarcaProduto then
  begin

    CaixaTexto.bs_Caption := 'Tabale de Marcas';
    CaixaTexto.bs_Table   := 'Marca With (NOLOCK)';

    CaixaTexto.bs_Fields.Add('IDMarca;Codigo;;' + inttostr(Width_Codigo));       //0
    CaixaTexto.bs_Fields.Add('Descricao;Nome da Marca;;' + inttostr(WIDTH_NOME220));           //1
    CaixaTexto.bs_Fields.Add('IDMarcaTipo;#;;' + inttostr(WIDTH_NOME220));           //1

    CaixaTexto.bs_OrderBy := 'Descricao';

    CaixaTexto.bs_TextResult := 'Descricao';
    CaixaTexto.bs_KeyField   := 'IDMarca';
  end
  else
  if TipoConsulta = TipoGrupo then
  begin
    CaixaTexto.bs_Caption := 'Tabale de Grupos';
    CaixaTexto.bs_Table   := 'GRUPO With (NOLOCK)';

    CaixaTexto.bs_Fields.Add('CodGrupo;Codigo;;' + inttostr(Width_Codigo));       //0
    CaixaTexto.bs_Fields.Add('DescGrupo;Nome do Grupo;;' + inttostr(WIDTH_NOME220));           //1

    CaixaTexto.bs_OrderBy := 'DescGrupo';

    CaixaTexto.bs_TextResult := 'DescGrupo';
    CaixaTexto.bs_KeyField   := 'CodGrupo';

  end
  else
  if TipoConsulta = TipoBanco then
  begin
    CaixaTexto.bs_Caption := 'Tabale de Bancos';
    CaixaTexto.bs_Table   := 'Banco With (NOLOCK)';

    CaixaTexto.bs_Fields.Add('NumBanco;Codigo;;' + inttostr(Width_Codigo));       //0
    CaixaTexto.bs_Fields.Add('Nome;Nome do Banco;;' + inttostr(WIDTH_NOME220));           //1

    CaixaTexto.bs_OrderBy := 'Nome';

    CaixaTexto.bs_TextResult := 'Nome';
    CaixaTexto.bs_KeyField   := 'NumBanco';

  end
  else
  if TipoConsulta = TipoContaCorrente then
  begin
    CaixaTexto.bs_Caption := 'Tabale de Conta Corrente';
    CaixaTexto.bs_Table   := 'ContaCor With (NOLOCK)';

    CaixaTexto.bs_Fields.Add('CodFilial;Filial;;' + inttostr(Width_Codigo));           //0
    CaixaTexto.bs_Fields.Add('CodConta;Codigo da Conta;;' + inttostr(Width_Codigo));   //1
    CaixaTexto.bs_Fields.Add('Nome;Nome do Banco;;' + inttostr(WIDTH_NOME220));        //2
    CaixaTexto.bs_Fields.Add('Agencia;Ag�ncia;;' + inttostr(Width_Codigo));            //3
    CaixaTexto.bs_Fields.Add('Numero;Nr� da Conta;;' + inttostr(WIDTH_NOME220));       //4
    CaixaTexto.bs_Fields.Add('NumBanco;Nr� do Banco;;' + inttostr(Width_Codigo));      //5
    CaixaTexto.bs_Fields.Add('(cast(Agencia as varchar) +'' - ''+ Numero) as ContaCorrente;#');      // 6


    CaixaTexto.bs_OrderBy := 'Nome';

    CaixaTexto.bs_TextResult := 'ContaCorrente';
    CaixaTexto.bs_KeyField   := 'CodConta';
  end
  else
  if TipoConsulta =  TipoComposicaoCPV then
  begin
    CaixaTexto.bs_Caption := 'Composi��o de Pre�o de Venda';
    CaixaTexto.bs_Table   := 'composicaoPV With (NOLOCK)';

    CaixaTexto.bs_Fields.Add('ID;Codigo;;' + inttostr(Width_Codigo));       //0
    CaixaTexto.bs_Fields.Add('DESCCPV;Composi��o;;' + inttostr(WIDTH_NOME220));           //1

    CaixaTexto.bs_OrderBy := 'DESCCPV';

    CaixaTexto.bs_TextResult := 'DESCCPV';
    CaixaTexto.bs_KeyField   := 'ID';
  end
  else
  if TipoConsulta =  TipoProdutoEspecie then
  begin
     CaixaTexto.bs_Caption := 'Esp�cie de Produto';
     CaixaTexto.bs_Table   := 'Produto_Especie With (NOLOCK)';


    CaixaTexto.bs_Fields.Add('CodEspecie;Codigo;;' + inttostr(Width_Codigo));       //0
    CaixaTexto.bs_Fields.Add('DescEspecie;Esp�cie;;' + inttostr(WIDTH_NOME220));           //1

    CaixaTexto.bs_OrderBy := 'DescEspecie';

    CaixaTexto.bs_TextResult := 'DescEspecie';
    CaixaTexto.bs_KeyField   := 'CodEspecie';

  end
  else
  if TipoConsulta  = TipoHistoricoVendas then
  begin

    CaixaTexto.bs_Caption := 'Hist�rico de Vendas';
    CaixaTexto.bs_Table := 'ItensPedidos i With (NOLOCK)';

    CaixaTexto.bs_Join := ' inner join pedidos p on p.CodPedido =  i.CodPedido and p.CodFilial = i.CodFilial  '  +
                          ' inner join produtos pr on pr.CodProdInterno = i.CodProduto';

    CaixaTexto.bs_Fields.Add('p.DataEmissao;Data da Venda;;' + inttostr(WIDTH_CODIGO));       //
    CaixaTexto.bs_Fields.Add('p.CodVendedor;Vendedor;;' + inttostr(WIDTH_CODIGO));       //
    CaixaTexto.bs_Fields.Add('i.CodPedido;Nr� Pedido;;' + inttostr(WIDTH_CODIGO35));       //0
    CaixaTexto.bs_Fields.Add('i.CodProduto;Codigo;;' + inttostr(WIDTH_CODIGO35));       //0
    CaixaTexto.bs_Fields.Add('pr.DescProduto;Descri��o;;' + inttostr(WIDTH_NOME220));       //0
    CaixaTexto.bs_Fields.Add('pr.Unidade;Unidade;;' + inttostr(WIDTH_CODIGO35));       //0
    CaixaTexto.bs_Fields.Add('i.Qtde;Qtde;;' + inttostr(WIDTH_CODIGO35));       //0
    CaixaTexto.bs_Fields.Add('i.ValorUnitario;Valor Unit�rio;;' + inttostr(WIDTH_CODIGO35)+ ';,0.00;');   //5
    CaixaTexto.bs_Fields.Add('i.ValorTotal;Valor Total;;' + inttostr(WIDTH_CODIGO35)+ ';,0.00;');   //5
    CaixaTexto.bs_Fields.Add('p.CodCliente;Cliente;;' + inttostr(WIDTH_CODIGO35));   //5

    CaixaTexto.bs_OrderBy :=  'i.CodPedido DESC';
    CaixaTexto.bs_TextResult := 'CodProduto';
    CaixaTexto.bs_KeyField   := 'CodPedido';

  end
  else
  if TipoConsulta = TipoVendedor then
  begin
    CaixaTexto.bs_Caption := 'Vendedor';
    CaixaTexto.bs_Table := 'Vendedor With (NOLOCK)';

    CaixaTexto.bs_Fields.Add('CodVendedor;Codigo;;' + inttostr(WIDTH_NOME220));       //0
    CaixaTexto.bs_Fields.Add('Nome;Nome;;' + inttostr(WIDTH_CODIGO));       //0

    CaixaTexto.bs_OrderBy := 'Nome';

    CaixaTexto.bs_TextResult := 'Nome';
    CaixaTexto.bs_KeyField   := 'CodVendedor';

  end
  else
  if TipoConsulta = TipoTransportadora then
  begin
    CaixaTexto.bs_Caption := 'Transportadora';
    CaixaTexto.bs_Table := 'transportadora With (NOLOCK)';

    CaixaTexto.bs_Fields.Add('Razao;Nome da Tranportadora;;' + inttostr(WIDTH_NOME220));       //0
    CaixaTexto.bs_Fields.Add('Cidade;Cidade;;' + inttostr(WIDTH_NOME220));           //1
    CaixaTexto.bs_Fields.Add('Estado;UF;;' + inttostr(WIDTH_CODIGO));           //1
    CaixaTexto.bs_Fields.Add('CodTransportadora;Codigo;;' + inttostr(WIDTH_CODIGO));           //1
    CaixaTexto.bs_OrderBy := 'Razao';

    CaixaTexto.bs_TextResult := 'Razao';
    CaixaTexto.bs_KeyField   := 'CodTransportadora';

  end
  else
  if TipoConsulta = TipoCentroCustoID then
  begin
    CaixaTexto.bs_Caption := 'Centro de Custo';
    CaixaTexto.bs_Table   := 'TRE_CENTROCUSTO With (NOLOCK)';

    CaixaTexto.bs_Fields.Add('TRE_CENTROCENTRO_ID;Codigo;;' + inttostr(Width_Codigo));       //0
    CaixaTexto.bs_Fields.Add('TRE_CENTROCENTRO;Codigo Centro de Custo;;' + inttostr(Width_Codigo));           //1
    CaixaTexto.bs_Fields.Add('DESCRICAO;Descri��o;;' + inttostr(WIDTH_NOME220));           //1
 //   CaixaTexto.bs_Distinct := True;
    CaixaTexto.bs_OrderBy := 'DESCRICAO';

    CaixaTexto.bs_TextResult := 'TRE_CENTROCENTRO_ID';
    CaixaTexto.bs_KeyField   := 'TRE_CENTROCENTRO';

  end
  else
  if TipoConsulta = TipoCentroCusto then
  begin
    CaixaTexto.bs_Caption := 'Centro de Custo';
    CaixaTexto.bs_Table   := 'TRE_CENTROCUSTO With (NOLOCK)';

    CaixaTexto.bs_Fields.Add('TRE_CENTROCENTRO_ID;Codigo;;' + inttostr(Width_Codigo));       //0
    CaixaTexto.bs_Fields.Add('TRE_CENTROCENTRO;Codigoo Centro de Custo;;' + inttostr(Width_Codigo));           //1
    CaixaTexto.bs_Fields.Add('DESCRICAO;Descri��o;;' + inttostr(WIDTH_NOME220));           //1
 //   CaixaTexto.bs_Distinct := True;
    CaixaTexto.bs_OrderBy := 'DESCRICAO';

    CaixaTexto.bs_TextResult := 'DESCRICAO';
    CaixaTexto.bs_KeyField   := 'TRE_CENTROCENTRO';

  end

  else
  if TipoConsulta = TipoPlanoContas then
  begin
    CaixaTexto.bs_Caption := 'Plano de Contas';
    CaixaTexto.bs_Table := 'PlanoContas With (NOLOCK)';

    CaixaTexto.bs_Fields.Add('CodConta;Codigo;;' + inttostr(Width_Codigo));       //0
    CaixaTexto.bs_Fields.Add('Descricao;Centro de Custo;;' + inttostr(WIDTH_NOME220));           //1

    CaixaTexto.bs_OrderBy := 'Descricao';

    CaixaTexto.bs_TextResult := 'Descricao';
    CaixaTexto.bs_KeyField   := 'CodConta';

  end
  else
  if TipoConsulta = TipoHistoricoInteracao then
  begin
    CaixaTexto.bs_Caption := 'Hist�rico de Intera��es';
    CaixaTexto.bs_Table := 'historico_situacao H With (NOLOCK)';

    CaixaTexto.bs_Join := ' left outer join Situacao s on s.codsituacao = h.codsituacao  '  ;

    CaixaTexto.bs_Fields.Add('H.DataHora;DataHora;;' + inttostr(Width_Codigo));       //0
    CaixaTexto.bs_Fields.Add('CASE ' +
          'WHEN (H.ORIGEM=''OC'') THEN ''OR�AMENTO'' ' +
          'WHEN (H.ORIGEM=''PV'') THEN ''PEDIDO DE VENDA'' ' +
          'WHEN (H.ORIGEM=''NFEE'') THEN ''NOTA FISCAL DE ENTRADA'' ' +
          'END;ORIGEM;;' + inttostr(WIDTH_DOCUMENTO));

    CaixaTexto.bs_Fields.Add('H.Codigo;Codigo;;' + inttostr(WIDTH_NOME220));           //1
    CaixaTexto.bs_Fields.Add('H.ObservacaoInterna;Observacao;;' + inttostr(WIDTH_NOME220));           //1
    CaixaTexto.bs_Fields.Add('S.Legenda;Legenda;;' + inttostr(WIDTH_DOCUMENTO));           //1

    CaixaTexto.bs_Fields.Add('H.Codusuario;Usu�rio;;' + inttostr(WIDTH_NOME220));           //1
    CaixaTexto.bs_Fields.Add('H.ORIGEM;#;;' + inttostr(WIDTH_NOME));            //1

    CaixaTexto.bs_OrderBy := 'H.CodHistorico_Situacao';

    CaixaTexto.bs_TextResult := 'Codigo';
    CaixaTexto.bs_KeyField   := 'Codigo';


  end
  else
  if TipoConsulta = TipoProdutoMateria then
  begin
    CaixaTexto.bs_Caption := 'Mat�ria Prima';
    CaixaTexto.bs_Table := 'Produto_Materia With (NOLOCK)';

    CaixaTexto.bs_Fields.Add('CodMateria;Codigo;;' + inttostr(Width_Codigo));       //0
    CaixaTexto.bs_Fields.Add('DescMateria;Mat�ria Prima;;' + inttostr(WIDTH_NOME220));           //1

    CaixaTexto.bs_OrderBy := 'DescMateria';

    CaixaTexto.bs_TextResult := 'DescMateria';
    CaixaTexto.bs_KeyField   := 'CodMateria';

  end
  else
  if TipoConsulta = TipoCompras then
  begin
    CaixaTexto.bs_Caption := 'Compras';
    CaixaTexto.bs_Table := 'Compras c With (NOLOCK)';

    CaixaTexto.bs_Join := ' inner join Fornecedores f on f.codfornecedor = c.codfornecedor  '  ;

   //Nome do Campo;Label;Mascara na Pesquisa;Width;Mascara na Grid
    CaixaTexto.bs_Fields.Add('c.CodCompra;Nr� Pedido;;' + inttostr(Width_Codigo));       //0
    CaixaTexto.bs_Fields.Add('c.CodFilial;Filial;;' + inttostr(Width_Codigo));           //1
    CaixaTexto.bs_Fields.Add('f.Nome;Fornecedor;;' + inttostr(WIDTH_NOME));              //2
    CaixaTexto.bs_Fields.Add('c.DataEmissao;Emiss�o do Pedido;;' + inttostr(WIDTH_NOME));//3
    CaixaTexto.bs_Fields.Add('f.CodFornecedor;#;;' + inttostr(WIDTH_NOME));              //4
    CaixaTexto.bs_Fields.Add('c.ValorTotal;Valor do Pedido;;' + inttostr(WIDTH_NOME)+ ';,0.000;');   //5
    CaixaTexto.bs_Fields.Add('c.Situacao;#;;' + inttostr(WIDTH_NOME));   //5

    CaixaTexto.bs_OrderBy := 'c.CodCompra';

    CaixaTexto.bs_TextResult := 'CodCompra';
    CaixaTexto.bs_KeyField   := 'CodCompra';
    CaixaTexto.bs_KeyField2  := 'CodFilial';

  end
  else
  if TipoConsulta = TipoVendas then
  begin
    CaixaTexto.bs_Caption := 'Or�amentos';
    CaixaTexto.bs_Table := 'Orcamento o With (NOLOCK)';

    CaixaTexto.bs_Join := ' inner join Clientes c on c.codcliente = o.codcliente  '  ;

    CaixaTexto.bs_Fields.Add('o.CodOrcamento;Nr� Or�amento;;' + inttostr(Width_Codigo));       //0
    CaixaTexto.bs_Fields.Add('o.CodFilial;Filial;;' + inttostr(Width_Codigo));           //1
    CaixaTexto.bs_Fields.Add('c.Razao;Cliente;;' + inttostr(WIDTH_NOME));              //2
    CaixaTexto.bs_Fields.Add('o.DataEmissao;Emiss�o do Or�amento;;' + inttostr(WIDTH_NOME));//3
    CaixaTexto.bs_Fields.Add('c.CodCliente;#;;' + inttostr(WIDTH_NOME));              //4
    CaixaTexto.bs_Fields.Add('o.ValorTotal;Valor do Or�amento;;' + inttostr(WIDTH_NOME)+ ';,0.000;');   //5

    CaixaTexto.bs_OrderBy := 'o.CodOrcamento';

    CaixaTexto.bs_TextResult := 'CodOrcamento';
    CaixaTexto.bs_KeyField   := 'CodOrcamento';
    CaixaTexto.bs_KeyField2  := 'CodFilial';

  end
  else
  If TipoConsulta = TipoProduto Then
  begin

    CaixaTexto.bs_Caption := 'Produtos';
    CaixaTexto.bs_Table := 'Produtos p With (NOLOCK)';

    CaixaTexto.bs_Join := ' inner join Produto_Grupos pg on pg.CodProdInterno = p.CodProdInterno  ' +
                          ' inner join Grupo g on g.CodGrupo = pg.CodGrupo ' +
                          ' Left Outer Join Estoque E on E.CodProdInterno = p.CodProdInterno ';


    CaixaTexto.bs_Fields.Add('p.CodProdInterno;Produto;;' + inttostr(Width_Codigo));       //0
    CaixaTexto.bs_Fields.Add('p.DescProduto;Descri��o;;' + inttostr(WIDTH_PRODUTO));       //1

    CaixaTexto.bs_Fields.Add('e.Qtde_Estoque;Estoque;;' + inttostr(Width_Codigo) + ';,0.000;');         //2
    CaixaTexto.bs_Fields.Add('(e.Qtde_Reservado * -1);Reservado;;' + inttostr(Width_Codigo) + ';,0.000;');     //3
    CaixaTexto.bs_Fields.Add('e.Qtde_Estoque - (e.Qtde_Reservado * -1) ;Dispon�vel;;' + inttostr(Width_Codigo) + ';,0.000;'); //4


    CaixaTexto.bs_Fields.Add('g.DescGrupo;#;;' + inttostr(WIDTH_NOME));                    //5
    CaixaTexto.bs_Fields.Add('g.CodGrupo;#;;' + inttostr(Width_Codigo));                   //6
    CaixaTexto.bs_Fields.Add('p.ProClFiscal;#;;' + inttostr(Width_Codigo));                //7
    CaixaTexto.bs_Fields.Add('p.Unidade;#;;' + inttostr(Width_Codigo));                //8

    CaixaTexto.bs_Fields.Add('p.Unidade;#;;' + inttostr(Width_Codigo));                //9
    CaixaTexto.bs_Fields.Add('(p.CodProdInterno +'' - ''+ p.DescProduto) as produto;#'); // 10
    CaixaTexto.bs_Fields.Add('p.CodMateria;#;;'); // 11
    CaixaTexto.bs_Fields.Add('p.CodEspecie;#;;'); // 12
    CaixaTexto.bs_Fields.Add('p.FatorConversao;#;;'); // 13
    CaixaTexto.bs_Fields.Add('p.UnidadeConversao;#;;'); // 14





    CaixaTexto.bs_OrderBy := ' p.CodProdInterno ';

    CaixaTexto.bs_TextResult := 'produto';
    CaixaTexto.bs_KeyField := 'CodProdInterno';
    CaixaTexto.bs_KeyField2 := '';
  end
  else
  If TipoConsulta = TipoProdutoVendas Then
  begin

    CaixaTexto.bs_Caption := 'Produtos';
    CaixaTexto.bs_Table := 'Produtos p With (NOLOCK)';

    CaixaTexto.bs_Join := ' inner join Produto_Grupos pg on pg.CodProdInterno = p.CodProdInterno  ' +
                          ' inner join Grupo g on g.CodGrupo = pg.CodGrupo ' +
                          ' Left Outer Join Estoque E on E.CodProdInterno = p.CodProdInterno ' +
                          ' Left Outer Join  VW_TABELADEPRECO vtp on vtp.CodProdInterno = p.CodProdInterno ';
                       {
                          ' left outer join ItensCompras ic on p.CodProdInterno = ic.CodProduto ' +
                          ' left outer join compras c on ic.CodCompra = c.CodCompra ' +
                          ' and ic.CodFilial = c.CodFilial and  c.situacao = ''Aprovada''';
                        }
    CaixaTexto.bs_Fields.Add('p.CodProdInterno;Produto;;' + inttostr(WIDTH_CODIGO));       //0
    CaixaTexto.bs_Fields.Add('p.DescProduto;Descri��o;;' + inttostr(WIDTH_PRODUTO));       //1

    CaixaTexto.bs_Fields.Add('IsNull(e.Qtde_Estoque,0);Estoque;;' + inttostr(WIDTH_CODIGO) + ';,0.000;');         //2
    CaixaTexto.bs_Fields.Add('IsNull(e.Qtde_Reservado * -1,0);Reservado;;' + inttostr(WIDTH_CODIGO) + ';,0.000;');     //3
    CaixaTexto.bs_Fields.Add('IsNull(e.Qtde_Estoque - (e.Qtde_Reservado * -1),0) ;Dispon�vel;;' + inttostr(WIDTH_CODIGO) + ';,0.000;'); //4

    CaixaTexto.bs_Fields.Add('g.DescGrupo;#;;' + inttostr(WIDTH_NOME));                    //5
    CaixaTexto.bs_Fields.Add('g.CodGrupo;#;;' + inttostr(WIDTH_CODIGO35));                   //6
    CaixaTexto.bs_Fields.Add('p.ProClFiscal;#;;' + inttostr(WIDTH_CODIGO35));                //7
    CaixaTexto.bs_Fields.Add('p.Unidade;#;;' + inttostr(WIDTH_CODIGO35));                //8

    CaixaTexto.bs_Fields.Add('p.Unidade;UN;;' + inttostr(WIDTH_CODIGO));                //9
    CaixaTexto.bs_Fields.Add('(p.CodProdInterno +'' - ''+ p.DescProduto) as produto;#'); // 10
    CaixaTexto.bs_Fields.Add('p.CodMateria;#;;'); // 11
    CaixaTexto.bs_Fields.Add('p.CodEspecie;#;;'); // 12

    CaixaTexto.bs_Fields.Add('vtp.ValorSugerido;1)Pre�o Venda;;' + inttostr(WIDTH_CODIGO) + ';,0.00;');         //13
    CaixaTexto.bs_Fields.Add('p.UnidadeConversao;UN Conv;;' + inttostr(WIDTH_CODIGO));                //14
    CaixaTexto.bs_Fields.Add('(vtp.ValorSugerido * IsNull(p.FatorConversao,1));2)Pre�o Venda;;' + inttostr(WIDTH_CODIGO) + ';,0.00;');         //15

    CaixaTexto.bs_Fields.Add('p.BloqueioInventario;#;;'); // 16
    CaixaTexto.bs_Fields.Add('vtp.XMLImportado;#;;'); // 17


//    CaixaTexto.bs_Fields.Add('ic.Qtde;Qtde Comprada;;' + inttostr(WIDTH_CODIGO) + ';,0.000;'); //16
//    CaixaTexto.bs_Fields.Add(' CONVERT(VARCHAR, DATEDIFF(DAY, (select dttrab from parametros), ic.DataEntrega));Dias p/ Entrega;');//17

    CaixaTexto.bs_OrderBy := ' p.CodProdInterno ';

    CaixaTexto.bs_TextResult := 'produto';
    CaixaTexto.bs_KeyField := 'CodProdInterno';
    CaixaTexto.bs_KeyField2 := '';
  end
  else if TipoConsulta = TipoCliente then
  begin
    CaixaTexto.bs_Caption := 'Clientes';
    CaixaTexto.bs_Table := 'Clientes With (NOLOCK)';

    CaixaTexto.bs_Fields.Add('CodCliente;Codigo;;' + inttostr(Width_Codigo));  //0
    CaixaTexto.bs_Fields.Add('razao;Nome;;' + inttostr(WIDTH_NOME));           //1
    CaixaTexto.bs_Fields.Add('Cidade;Cidade;;' + inttostr(WIDTH_NOME));        //2
    CaixaTexto.bs_Fields.Add('Estado;UF;;' + inttostr(Width_Codigo) + ';;S');  //3

    CaixaTexto.bs_Fields.Add('fisjur;#;;' + inttostr(Width_Codigo));           //4
    CaixaTexto.bs_Fields.Add('CNPJ_CIC;CNPJ;;' + inttostr(WIDTH_NOME)) ;        //5
    CaixaTexto.bs_Fields.Add('Inscricao;#;;' + inttostr(WIDTH_DOCUMENTO) + ';;');     //6

    CaixaTexto.bs_Fields.Add('CEP;#;;' + inttostr(Width_Codigo));              //7
    CaixaTexto.bs_Fields.Add('Endereco;#;;' + inttostr(WIDTH_NOME));           //8
    CaixaTexto.bs_Fields.Add('EndNum;#;;' + inttostr(Width_Codigo));           //9
    CaixaTexto.bs_Fields.Add('Complemento;#;;' + inttostr(WIDTH_NOME));        //10

    CaixaTexto.bs_Fields.Add('Bairro;#;;' + inttostr(WIDTH_NOME));             //11

    CaixaTexto.bs_Fields.Add('ConsumFinal;#;;' + inttostr(Width_Codigo));      //12
    CaixaTexto.bs_Fields.Add('ContribuinteICMS;#;;' + inttostr(Width_Codigo)); //13
    CaixaTexto.bs_Fields.Add('CodTipoCli;#;;' + inttostr(Width_Codigo));       //14
    CaixaTexto.bs_Fields.Add('Numero1;#;;' + inttostr(Width_Codigo));          //15
    CaixaTexto.bs_Fields.Add('Email_Nfe;#;;' + inttostr(Width_Codigo));        //16
    CaixaTexto.bs_Fields.Add('CodCidade;#;;' + inttostr(Width_Codigo));         //17
    CaixaTexto.bs_Fields.Add('CodVendedor;#;;' + inttostr(Width_Codigo));       //18
    CaixaTexto.bs_Fields.Add('(cast(CodCliente as varchar) +'' - ''+ razao) as cliente;#');      // 19
    CaixaTexto.bs_Fields.Add('ClienteBalcao;#;;' + inttostr(Width_Codigo)); //20
    CaixaTexto.bs_Fields.Add('ZFMIsentoICMS;#;;' + inttostr(Width_Codigo)); //21
    CaixaTexto.bs_Fields.Add('ZFMIsentoIPI;#;;' + inttostr(Width_Codigo)); //22
    CaixaTexto.bs_Fields.Add('ZFMIsentoPIS;#;;' + inttostr(Width_Codigo)); //23
    CaixaTexto.bs_Fields.Add('ZFMIsentoCOFINS;#;;' + inttostr(Width_Codigo)); //24
    CaixaTexto.bs_Fields.Add('CliIsentoIPI;#;;' + inttostr(Width_Codigo)); //25
    CaixaTexto.bs_Fields.Add('CSTIPI_Isento;#;;' + inttostr(Width_Codigo)); //26



    CaixaTexto.bs_OrderBy := ' razao ';

    CaixaTexto.bs_TextResult := 'cliente';
    CaixaTexto.bs_KeyField := 'CodCliente';
    CaixaTexto.bs_KeyField2 := '';
  end
  else if TipoConsulta = TipoFornecedorX then
  begin


    CaixaTexto.bs_Caption := 'Fornecedores';
    CaixaTexto.bs_Table := 'fornecedores';

    CaixaTexto.bs_Fields.Add('codfornecedor;Codigo;;' + inttostr(WIDTH_NOME220));                    //0
    CaixaTexto.bs_Fields.Add('nome;Nome;;' + inttostr(WIDTH_NOME220));                    //0
    CaixaTexto.bs_Fields.Add('cnpj;CNPJ;;' + inttostr(WIDTH_DOCUMENTO));
    CaixaTexto.bs_Fields.Add('estado;UF;;' + inttostr(Width_Codigo) + ';;S');

    CaixaTexto.bs_TextResult := 'nome';
    CaixaTexto.bs_KeyField := 'codfornecedor';
    CaixaTexto.bs_KeyField2 := '';


  end
  else if TipoConsulta = TipoItensFaturado then
  begin

    CaixaTexto.bs_Caption := 'Produtos';
    CaixaTexto.bs_Table := 'NFe_Itens i With (NOLOCK)';

    CaixaTexto.bs_Join := ' inner join Nfe n on n.NumNF = i.NumNF  ' +
                          ' inner join Produtos p on p.CodProdInterno = i.CodProduto ';

    CaixaTexto.bs_Fields.Add('n.DataEmissao;Data Emiss�o;;' + inttostr(Width_Codigo));       //0
    CaixaTexto.bs_Fields.Add('n.NumNF;NF;;' + inttostr(Width_Codigo));       //1

    CaixaTexto.bs_Fields.Add('p.CodProdInterno;Codigo;;' + inttostr(Width_Codigo));         //2
    CaixaTexto.bs_Fields.Add('p.DescProduto;Produto;;' + inttostr(WIDTH_PRODUTO));     //3
    CaixaTexto.bs_Fields.Add('i.Qtde;Quantidade;;' + inttostr(Width_Codigo)); //4
    CaixaTexto.bs_Fields.Add('i.ValorUnitario;Pre�o;;' + inttostr(Width_Codigo)); //4

    CaixaTexto.bs_Filter := ' n.situacao_nfe = ''Registrado'' ';

    CaixaTexto.bs_OrderBy := ' i.NumNF, i.NumItem ';

    CaixaTexto.bs_TextResult := 'DescProduto';
    CaixaTexto.bs_KeyField   := 'CodProdInterno';
    CaixaTexto.bs_KeyField2  := '';

  end;


                           {
  if TipoConsulta = TipoSMSProfissionalMotorista then
  begin
    CaixaTexto.bs_Caption := 'PROFISSIONAL - MOTORISTA';
    CaixaTexto.bs_Table := Tabela_ProfissionalSMS  + ' P';
    CaixaTexto.bs_Distinct  := True;
    CaixaTexto.bs_Join := ' LEFT OUTER JOIN TRANSPORTADORA_PROFISSIONAL TP ON TP.PR_ID = P.PR_ID ' +
                          ' LEFT OUTER JOIN VIAGEM_TRAFEGO VT ON VT.PR_ID = P.PR_ID ' +
                          ' INNER JOIN PROFISSIONAL_TELEFONE PT ON PT.PR_ID = P.PR_ID';

    CaixaTexto.bs_Fields.Add(' CASE WHEN VT.PR_ID <>  ''0'' THEN ''ENTREGA PENDENTE''  WHEN VT.PR_ID IS NULL THEN ''DISPONIVEL'' END;STATUS;;' + inttostr(WIDTH_APELIDO));

    CaixaTexto.bs_Fields.Add('P.PR_NOME;Profissional;;' + inttostr(Width_Descricao));
    CaixaTexto.bs_Fields.Add('(SELECT TOP 1 V.VE_PLACA FROM PROFISSIONAL_VEICULO PV ' +
                              'LEFT OUTER JOIN VEICULO V ON V.VE_ID = PV.VE_ID ' +
                              'WHERE PV.PR_ID = P.PR_ID AND V.VE_TIPO = ''0'');PLACA VEICULO;;' + inttostr(Width_Descricao));

    CaixaTexto.bs_Fields.Add('(SELECT TOP 1 V.VE_PLACA FROM PROFISSIONAL_VEICULO PV ' +
                              'LEFT OUTER JOIN VEICULO V ON V.VE_ID = PV.VE_ID ' +
                              'WHERE PV.PR_ID = P.PR_ID AND V.VE_TIPO = ''1'');PLACA CARRETA;;' + inttostr(Width_Descricao));

    CaixaTexto.bs_Fields.Add('(SELECT TOP 1 V.VE_PLACA FROM PROFISSIONAL_VEICULO PV ' +
                              'LEFT OUTER JOIN VEICULO V ON V.VE_ID = PV.VE_ID ' +
                              'WHERE PV.PR_ID = P.PR_ID AND V.VE_TIPO = ''2'');PLACA TREMINH�O;;' + inttostr(Width_Descricao));

    CaixaTexto.bs_Fields.Add('P.PR_CPF;CPF;;' + inttostr(Width_Codigo));
    CaixaTexto.bs_Fields.Add('P.PR_ID;#;;' + inttostr(Width_Codigo));
    CaixaTexto.bs_TextResult := 'PR_Nome';
    CaixaTexto.bs_KeyField := 'P.PR_ID';
    CaixaTexto.bs_KeyField2 := '';
  end;
                            }
{
  if TipoConsulta = TipoSMSMotorista Then
  begin
    CaixaTexto.bs_Caption := 'PROFISSIONAL - MOTORISTA';
    CaixaTexto.bs_Table := Tabela_ProfissionalSMS  + ' P';
    CaixaTexto.bs_Distinct  := True;
    CaixaTexto.bs_Join := ' LEFT OUTER JOIN TRANSPORTADORA_PROFISSIONAL TP ON TP.PR_ID = P.PR_ID ' +
                          ' LEFT OUTER JOIN VIAGEM_TRAFEGO VT ON VT.PR_ID = P.PR_ID ';

    CaixaTexto.bs_Fields.Add(' CASE WHEN VT.PR_ID <>  ''0'' THEN ''ENTREGA PENDENTE''  WHEN VT.PR_ID IS NULL THEN ''DISPONIVEL'' END;STATUS;;' + inttostr(WIDTH_APELIDO));

    CaixaTexto.bs_Fields.Add('P.PR_NOME;Profissional;;' + inttostr(Width_Descricao));
    CaixaTexto.bs_Fields.Add('(SELECT TOP 1 V.VE_PLACA FROM PROFISSIONAL_VEICULO PV ' +
                              'LEFT OUTER JOIN VEICULO V ON V.VE_ID = PV.VE_ID ' +
                              'WHERE PV.PR_ID = P.PR_ID AND V.VE_TIPO = ''0'');PLACA VEICULO;;' + inttostr(Width_Descricao));

    CaixaTexto.bs_Fields.Add('(SELECT TOP 1 V.VE_PLACA FROM PROFISSIONAL_VEICULO PV ' +
                              'LEFT OUTER JOIN VEICULO V ON V.VE_ID = PV.VE_ID ' +
                              'WHERE PV.PR_ID = P.PR_ID AND V.VE_TIPO = ''1'');PLACA CARRETA;;' + inttostr(Width_Descricao));

    CaixaTexto.bs_Fields.Add('(SELECT TOP 1 V.VE_PLACA FROM PROFISSIONAL_VEICULO PV ' +
                              'LEFT OUTER JOIN VEICULO V ON V.VE_ID = PV.VE_ID ' +
                              'WHERE PV.PR_ID = P.PR_ID AND V.VE_TIPO = ''2'');PLACA TREMINH�O;;' + inttostr(Width_Descricao));

    CaixaTexto.bs_Fields.Add('P.PR_CPF;CPF;;' + inttostr(Width_Codigo));
    CaixaTexto.bs_Fields.Add('P.PR_ID;#;;' + inttostr(Width_Codigo));
    CaixaTexto.bs_TextResult := 'PR_Nome';
    CaixaTexto.bs_KeyField := 'P.PR_ID';
    CaixaTexto.bs_KeyField2 := '';

  end;
 }
{
  if TipoConsulta = TipoSMSViagem then
  begin
    CaixaTexto.bs_Caption := 'ENTREGAS';
    CaixaTexto.bs_Table := Tabela_Entrega + ' E';
    CaixaTexto.bs_Distinct := True;

    // C�nfigura��o de Cor na Grid
    CaixaTexto.bs_SetColor := True;
    CaixaTexto.bs_IndiceCampo := 1;
    CaixaTexto.bs_NomeCor := clRed;
    CaixaTexto.bs_ValorCor := 'REALIZADA';


    CaixaTexto.bs_OrderBy := 'V.VG_STATUS,V.VG_EXPORTAR,V.VG_ID,E.ET_CTRC,T.TR_NOME,D.DN_NOMEFANTASIA, ' +
                             'V.VG_NUMEROINTERNO,V.VG_DATAVIAGEM,P.PR_NOME';
    CaixaTexto.bs_Join  := 'LEFT OUTER JOIN VIAGEM V ON V.VG_ID = E.VG_ID ' +
                           'LEFT OUTER JOIN EMBARCADOR_TRANSPORTADOR DT ON DT.EMBARCADOR_ID = E.TR_ID ' +
                           'LEFT OUTER JOIN VIAGEM_PROFISSIONAL VP ON VP.VG_ID = V.VG_ID AND VP.VM_ATIVO = ''0'' ' + //AND VP.VM_SMS = ''0'' ' +
                           'LEFT OUTER JOIN PROFISSIONAL P ON P.PR_ID = VP.PR_ID ' +
                           'LEFT OUTER JOIN DESTINATARIO D ON D.DN_ID = E.DN_ID ' +
                           'LEFT OUTER JOIN TRANSPORTADORA T ON T.TR_ID = E.TR_ID ' +
                           'LEFT OUTER JOIN VIAGEM_VEICULO VV ON VV.VG_ID = V.VG_ID AND VV.VV_ATIVO = ''0'' ' +
                           'LEFT OUTER JOIN VEICULO VE ON VE.VE_ID = VV.VE_ID AND VE.VE_TIPO = ''0'' ';



    CaixaTexto.bs_Fields.Add('E.ET_CTRC;[Nr� do CTRC];;' + inttostr(WIDTH_APELIDO));

    CaixaTexto.bs_Fields.Add('CASE ' +
          'WHEN (V.VG_STATUS=0) AND (V.VG_EXPORTAR=0) THEN ''PREPARA��O'' ' +
          'WHEN (V.VG_STATUS=0) AND (V.VG_EXPORTAR=1) THEN ''AGUARDANDO PARA ENVIO'' ' +
          'WHEN (V.VG_STATUS=0) AND (V.VG_EXPORTAR=2) THEN ''ENVIADO'' ' +
          'WHEN (V.VG_STATUS=1) AND (V.VG_EXPORTAR=2) THEN ''REALIZADA'' '+
          'WHEN (V.VG_STATUS=2) THEN ''CANCELADA'' '+
          'END;STATUS DA VIAGEM;;' + inttostr(WIDTH_DOCUMENTO));

    CaixaTexto.bs_Fields.Add('T.TR_NOME;EMBARCADOR;;' + inttostr(WIDTH_CODIGO));
    CaixaTexto.bs_Fields.Add('D.DN_NOMEFANTASIA;CLIENTE;;' + inttostr(WIDTH_DOCUMENTO));

    CaixaTexto.bs_Fields.Add('V.VG_NUMEROINTERNO;NUMERO INTERNO;;' + inttostr(WIDTH_CODIGO) );
    CaixaTexto.bs_Fields.Add('V.VG_ID;VIAGEM;;');
    CaixaTexto.bs_Fields.Add('V.VG_DATAVIAGEM;DATA DA VIAGEM;;' +  inttostr(Width_Descricao));
    CaixaTexto.bs_Fields.Add('P.PR_NOME;PROFISSIONAL;;' + inttostr(Width_Descricao));
    CaixaTexto.bs_Fields.Add('V.VG_STATUS;;;');
    CaixaTexto.bs_Fields.Add('V.VG_EXPORTAR;;;');
    CaixaTexto.bs_Fields.Add('VE.VE_PLACA;CAVALO;;');

    CaixaTexto.bs_Fields.Add('P.PR_ID;#;;');
    CaixaTexto.bs_Fields.Add('VE.VE_ID;#;;');



    //CaixaTexto.bs_Filter := 'V.VG_STATUS <> ''2'''; // 2 - CANCELADA PELO USUARIO
    CaixaTexto.bs_TextResult := 'VG_NUMEROINTERNO';
    CaixaTexto.bs_KeyField := 'VG_ID';
    CaixaTexto.bs_KeyField2:= '';
  end;


  if TipoConsulta = TipoFavorecidoEndCliente then
  begin
    CaixaTexto.bs_Caption := 'Favorecido Endere�o';
    CaixaTexto.bs_Table := Tabela_FavorecidoEndereco + ' FEnd';
    CaixaTexto.bs_Filter := 'FEnd.END_Ativo = ''S'' and ERP_Favorecido.FAV_Ativo = ''S'' and ERP_Favorecido.FAV_TipoCliente = ''S''' +
      ' and Cla.CLA_Codigo = 1309 ';
    CaixaTexto.bs_Join := ' Inner Join ERP_Favorecido on (FEnd.FAV_Codigo = ERP_FAvorecido.FAV_Codigo)' +
      ' LEFT OUTER JOIN FAT_FAVORECIDO_PRODUTO FFP ON (FFP.FAV_CODIGO = FEnd.FAV_Codigo and FFP.END_Codigo = FEnd.END_Codigo)' +
      ' INNER JOIN  ERP_Classificacao Cla ON (Cla.CLA_Codigo = FEnd.CLA_CodigoTipoEndereco) ';
    CaixaTexto.bs_Fields.Add('FEnd.END_CODIGOCliente;Codigo Cliente;=;' + inttostr(Width_Codigo));
    CaixaTexto.bs_Fields.Add('FEnd.END_RazSocial;Raz�o Social;like;' + inttostr(Width_Descricao));
    CaixaTexto.bs_Fields.Add('FEnd.END_Endereco;Endere�o;like;' + inttostr(Width_Endereco));
    CaixaTexto.bs_Fields.Add('FEnd.END_CgcCpf;CPF/CNPJ;=;' + IntToStr(Width_Documento)); //5
    CaixaTexto.bs_Fields.Add('(FEnd.END_TelefoneDDD + ''-'' + FEnd.END_Telefone);Telefone;;' + IntToStr(Width_Codigo)); //6
    CaixaTexto.bs_Fields.Add('FEnd.FAV_CODIGO;#');
    CaixaTexto.bs_Fields.Add('FEnd.END_CODIGO;#');
    CaixaTexto.bs_TextResult := 'END_RazSocial';
    CaixaTexto.bs_DefaultBusca := 'Raz�o Social';
    CaixaTexto.bs_KeyField := 'FEnd.FAV_CODIGO';
    CaixaTexto.bs_KeyField2 := 'FEnd.END_CODIGO';
  end;
  }
  CaixaTexto.NullValueKey := ShortCut(46, [ssCtrl]);
  CaixaTexto.Text := '';
end;

procedure SetParametroTabela(EditBusca: TEditBusca;
  Tabela: ShortString);
begin

  if Tabela = 'Produtos' then
    SetParametros(EditBusca, TipoProduto)
  else if Tabela = 'Clientes' then
    SetParametros(EditBusca, TipoCliente)
  else if Tabela = 'Fornecedores' then
    SetParametros(EditBusca, TipoFornecedor)
  else if Tabela = 'NFe_Itens' then
    SetParametros(EditBusca, TipoItensFaturado)
  else if Tabela = 'Compras' then
    SetParametros(EditBusca, TipoCompras)
  else if Tabela = 'Produto_Materia' then
    SetParametros(EditBusca, TipoProdutoMateria)
  else if Tabela = 'historico_situacao' then
    SetParametros(EditBusca, TipoHistoricoInteracao)
  else if Tabela = 'Orcamento' then
    SetParametros(EditBusca, TipoVendas)
  else if Tabela = 'CentroCusto' then
    SetParametros(EditBusca, TipoCentroCusto)
  else if Tabela = 'Vendedor' then
    SetParametros(EditBusca, TipoVendedor)
  else if Tabela = 'ItensPedidos' then
    SetParametros(EditBusca, TipoHistoricoVendas)
  else if Tabela = 'Produto_Especie' Then
    SetParametros(EditBusca, TipoProdutoEspecie )
  else if Tabela = 'composicaoPV' then
    SetParametros(EditBusca, TipoComposicaoCPV )
  else if Tabela = 'TBSUPPLIER' then
    SetParametros(EditBusca, TipoSupplier )
  else if Tabela = 'TBPRICELIST' then
    SetParametros(EditBusca, TipoPricingTable )
  else if Tabela = 'TBCONTRACTORS' then
    SetParametros(EditBusca, TipoContractor )
  else if Tabela = 'TBCUSTOMER' then
    SetParametros(EditBusca, TipoCustomer )
  else if Tabela = 'TBPRICEITEM' then
    SetParametros(EditBusca, TipoVendorPricingTable )
  else if Tabela = 'TBCUSTOMER' then
    SetParametros(EditBusca, TipoCustomerCompany )
  else if Tabela = 'TBPRODUCT' then
    SetParametros(EditBusca, TipoProduct );



end;

end.


