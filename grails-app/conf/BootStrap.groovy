class BootStrap {

    def init = { servletContext ->
        log.info('This is the init() method of grails-app/conf/BootStrap.groovy.  This should be visible when application starts.')
    }
    def destroy = {
        log.info('This is the destroy() method of grails-app/conf/BootStrap.groovy.  This should be visible when application ends.')
    }
}
