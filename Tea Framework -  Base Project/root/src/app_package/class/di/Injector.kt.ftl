package ${packageName}.di;


class DataInjector : IDataInjector {

    companion object {
        var instance: DataInjector? = null
            get() {
                if (field == null) {
                    field = DataInjector()
                }
                return field
            }
    }
}
