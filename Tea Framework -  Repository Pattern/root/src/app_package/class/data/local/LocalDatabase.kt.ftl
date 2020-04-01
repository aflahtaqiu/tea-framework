package ${escapeKotlinIdentifiers(packageName)}.data.local

import androidx.room.Database
import androidx.room.Room
import androidx.room.RoomDatabase
import android.content.Context
import ${escapeKotlinIdentifiers(packageName)}.model.${modelName}
import ${escapeKotlinIdentifiers(packageName)}.data.local.dao.${modelName}Dao


// TODO: add your class model here in entities params and separate with comma
@Database(entities = [${modelName}::class], version = 1)
abstract class LocalDatabase : RoomDatabase() {
    abstract fun ${classToResource(modelName)}Dao(): ${modelName}Dao? 
    // TODO: declare your daos as abstract variable and use public access modifier

    companion object {
        private var localDatabase: LocalDatabase? = null
        private const val dbName = "local_database"
        fun createDatabase(context: Context?): LocalDatabase? {
            synchronized(LocalDatabase::class.java) {
                if (localDatabase == null) localDatabase =
                    Room.databaseBuilder(
                        context!!,
                        LocalDatabase::class.java,
                        dbName
                    )
                        .allowMainThreadQueries()
                        .fallbackToDestructiveMigration()
                        .build()
            }
            return localDatabase
        }
    }
}