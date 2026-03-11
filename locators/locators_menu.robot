*** Variables ***    #    identificação dos elementos importantes na página de compras
${item-id}    id=item_{id}_title_link
${titulo-item}    //*[@id="item_{index}_title_link"]/div
${botao-adicionar-carrinho}    id=add-to-cart-{nome-produto}
${botao-remover-carrinho}    id=remove-{nome-produto}

${titulo-inventario}    class=title

${botao-carrinho}    class=shopping_cart_link
${contador-carrinho}    class=shopping_cart_badge