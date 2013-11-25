appDep= 
    components: 
        main: 
            url: 'main.js'
            loaded: false
    addComponent: (component) ->
        c = this.components[component]
        if c and c.loaded is false
            s = document.createElement('script')
            s.setAttribute('type', 'text/javascript')
            s.setAttribute('src', c.url)
            document.getElementsByTagName('head')[0].appendChild(s)
            c.loaded = true
            return
    componentAvailable: (component) ->
        this.component[component].loaded = true
        this.listener(component) if this.listener
        return
