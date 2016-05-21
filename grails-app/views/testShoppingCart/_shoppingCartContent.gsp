<sc:each>
	<tr>
		<td>
			${com.metasieve.shoppingcart.Shoppable.findByShoppingItem(it['item']) ?: com.metasieve.shoppingcart.ShoppingCartInterfaceTestProduct.findByShoppingItem(it['item'])}
		</td>
		<td>
			${it['qty']}
		</td>
		<td>
			<g:remoteLink action="agregar"
				params="${[id:(com.metasieve.shoppingcart.Shoppable.findByShoppingItem(it['item']) ?: com.metasieve.shoppingcart.ShoppingCartInterfaceTestProduct.findByShoppingItem(it['item'])).id, class:(com.metasieve.shoppingcart.Shoppable.findByShoppingItem(it['item']) ?: com.metasieve.shoppingcart.ShoppingCartInterfaceTestProduct.findByShoppingItem(it['item'])).class, version:(com.metasieve.shoppingcart.Shoppable.findByShoppingItem(it['item']) ?: com.metasieve.shoppingcart.ShoppingCartInterfaceTestProduct.findByShoppingItem(it['item'])).version]}"
				update="shoppingCartContent"
				onComplete="Effect.Pulsate('shoppingCartContent', {pulses: 1, duration: 1.0});">
				Agregar
			</g:remoteLink>
		</td>
		<td>
			<g:remoteLink action="eliminar"
				params="${[id:(com.metasieve.shoppingcart.Shoppable.findByShoppingItem(it['item']) ?: com.metasieve.shoppingcart.ShoppingCartInterfaceTestProduct.findByShoppingItem(it['item'])).id, class:(com.metasieve.shoppingcart.Shoppable.findByShoppingItem(it['item']) ?: com.metasieve.shoppingcart.ShoppingCartInterfaceTestProduct.findByShoppingItem(it['item'])).class, version:(com.metasieve.shoppingcart.Shoppable.findByShoppingItem(it['item']) ?: com.metasieve.shoppingcart.ShoppingCartInterfaceTestProduct.findByShoppingItem(it['item'])).version]}"
				update="shoppingCartContent"
				onComplete="Effect.Pulsate('shoppingCartContent', {pulses: 1, duration: 1.0});">
				Eliminar
			</g:remoteLink>
		</td>
		<td>
			<g:remoteLink action="eliminarTodo"
				params="${[id:(com.metasieve.shoppingcart.Shoppable.findByShoppingItem(it['item']) ?: com.metasieve.shoppingcart.ShoppingCartInterfaceTestProduct.findByShoppingItem(it['item'])).id, class:(com.metasieve.shoppingcart.Shoppable.findByShoppingItem(it['item']) ?: com.metasieve.shoppingcart.ShoppingCartInterfaceTestProduct.findByShoppingItem(it['item'])).class, version:(com.metasieve.shoppingcart.Shoppable.findByShoppingItem(it['item']) ?: com.metasieve.shoppingcart.ShoppingCartInterfaceTestProduct.findByShoppingItem(it['item'])).version]}"
				update="shoppingCartContent"
				onComplete="Effect.Pulsate('shoppingCartContent', {pulses: 1, duration: 1.0});">
				Eliminar Todo
			</g:remoteLink>
		</td>
	</tr>
</sc:each>
<g:if test="${checkedOutItems}">
	<tr>
		<td><h2>Elementos despachados</h2></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<g:each in="${checkedOutItems}" var="item">
		<tr>
			<td>
				${com.metasieve.shoppingcart.Shoppable.findByShoppingItem(item['item']) ?: com.metasieve.shoppingcart.ShoppingCartInterfaceTestProduct.findByShoppingItem(item['item'])}
			</td>
			<td>
				${item['qty']}
			</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
	</g:each>
</g:if>