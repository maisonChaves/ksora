package br.com.ksora.utils;

import br.com.caelum.vraptor.Accepts;
import br.com.caelum.vraptor.AroundCall;
import br.com.caelum.vraptor.Intercepts;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.controller.ControllerMethod;
import br.com.caelum.vraptor.core.InterceptorStack;
import static br.com.caelum.vraptor.view.Results.http;
import br.com.ksora.anotacao.Permissao;
import br.com.ksora.anotacao.Public;
import br.com.ksora.enuns.Perfil;
import br.com.ksora.objeto.Usuario;

import java.util.Arrays;
import java.util.Collection;
import javax.inject.Inject;

/**
 *
 * @author Leonardo Lima
 */
@Intercepts
public class PermissionInterceptor {

    private final Result result;
    @Inject
    private Sessao sessao;

    public PermissionInterceptor(Result result) {
        this.result = result;
    }

    protected PermissionInterceptor() {
        this(null);

    }

    @Accepts
    public boolean accepts(ControllerMethod method) {
        return !(method.getMethod().isAnnotationPresent(Public.class)
                || method.getController().getType().isAnnotationPresent(Public.class));
    }

    @AroundCall
    public void intercept(InterceptorStack stack, ControllerMethod method, Object resource) {
        Permissao methodPermission = method.getMethod().getAnnotation(Permissao.class);
        Permissao controllerPermission = method.getController().getType().getAnnotation(Permissao.class);

        if (this.hasAccess(methodPermission) && this.hasAccess(controllerPermission)) {
            stack.next(method, resource);
        } else {
            result.use(http()).sendError(403, "Você não tem permissão de acesso para está ação!!");
        }
    }

    private boolean hasAccess(Permissao permission) {
        if (permission == null) {
            return true;
        }

        Collection<Perfil> perfilList = Arrays.asList(permission.value());
        Usuario usuarioSessao = new Usuario();
        usuarioSessao = sessao.getUsuario();
        return perfilList.contains(usuarioSessao.getPerfil());
    }
}
