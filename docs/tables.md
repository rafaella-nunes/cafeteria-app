## Tabelas

### Tabela produtos
- Descrição: Armazena informações sobre os produtos disponíveis no menu da cafeteria.
- Colunas:
  - produto_id: Identificador único do produto (chave primária).
  - nome: Nome do produto.
  - descricao: Descrição detalhada do produto.
  - preco: Preço do produto.

### Tabela clientes
- Descrição: Mantém registros dos clientes da cafeteria.
- Colunas:
  - cliente_id: Identificador único do cliente (chave primária).
  - nome: Nome do cliente.
  - email: Endereço de email do cliente (único).
  - telefone: Número de telefone do cliente.

### Tabela pedidos
- Descrição: Registra os pedidos feitos pelos clientes.
- Colunas:
  - pedido_id: Identificador único do pedido (chave primária).
  - cliente_id: Identificador do cliente que fez o pedido (chave estrangeira referenciando a tabela clientes).
  - data_pedido: Data e hora em que o pedido foi feito (padrão é o momento atual).
  - status: Status do pedido (padrão é 'Em andamento').

### Tabela detalhes_pedido
- Descrição: Armazena detalhes específicos de cada pedido, como os itens pedidos e suas quantidades.
- Colunas:
  - detalhe_id: Identificador único do detalhe do pedido (chave primária).
  - pedido_id: Identificador do pedido ao qual este detalhe pertence (chave estrangeira referenciando a tabela pedidos).
  - produto_id: Identificador do produto incluído no pedido (chave estrangeira referenciando a tabela produtos).
  - quantidade: Quantidade do produto incluída no pedido.
  - preco_unitario: Preço unitário do produto no momento do pedido.
  - subtotal: Subtotal do preço para este item do pedido.

## Exemplo de Inserção de Dados
- Inserções de exemplo foram fornecidas para cada uma das tabelas, demonstrando como os dados podem ser adicionados às tabelas.