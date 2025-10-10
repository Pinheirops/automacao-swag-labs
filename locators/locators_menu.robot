*** Variables ***
${item-id}    id=item_{id}_title_link
${titulo-item}    //*[@id="item_{index}_title_link"]/div
${botao-adicionar-carrinho}    id=add-to-cart-{nome-produto}
${botao-remover-carrinho}    id=remove-{nome-produto}

${titulo-inventario}    class=title

${botao-carrinho}    class=shopping_cart_link
${contador-carrinho}    class=shopping_cart_badge

# ${MENU_BUTTON}    id=react-burger-menu-btn
# ${ITEM_HOME}    id=inventory_sidebar_link
# ${ITEM_ABOUT}    id=about_sidebar_link
# ${ITEM_LOGOUT}    id=logout_sidebar_link
# ${ITEM_RESET}    id=reset_sidebar_link

# ${SORT_BUTTON}    class=product_sort_container
