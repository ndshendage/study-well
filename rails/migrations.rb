#bharat
class MigrationMethods
  #mostly use it for creating the file of migration and update it manually for only create_table it accepts the options
  def create_table
    create_table(name, options)
    Query = bundle exec rails g migration create_table_name column1:datatype column2:datatype
    Actual_Execution =
      def change
        create_table :table_name do |t|
          t.datatype :column1
          t.datatype :column2
        end
      end
  end

  def rename_table
    rename_table(old_, new_name)
    Query = bundle exec rails g migration rename_table_name
    Actual_Execution =
      def change
        rename_table :old_name, :new_name
      end
  end

  def drop_table
    drop_table(name)
    Query = bundle exec rails g migration drop_table_name
    Actual_Execution =
      def change
        drop_table :table_name
      end
  end


  def add_column
    add_column(table_name, column_name, type, options)
    Query = bundle exec rails g migration add_column_name_to_table_name column_name:datatype_of_column

    Actual_Execution =
      def change
        add_column :table_name, :column_name, :datatype_of_column
      end
  end

  def rename_column
    rename_column(table_name, old_column_name, new_column_name)
    Query = bundle exec rails g migration rename_column_name_in_table_name

    Actual_Execution =
      def change
        rename_column :table_name, :old_column_name, :new_column_name
      end
  end

  def change_column
    change_column(table_name, column_name, type, options)
    Query = bundle exec rails g migration change_column_name_in_table_name

    Actual_Execution =
      def change
        change_column :table_name, :column_name, :new_datatype_of_column
      end
  end
 def remove_column
    remove_column(table_name, column_name, type)
    Query = bundle exec rails g migration remove_column_name_from_table_name column_name:datatype_of_column

    Actual_Execution =
      def change
        remove_column :table_name, :column_name, :datatype_of_column
      end
  end

 add_index(table_name, column_name, index_type)
 remove_index(table_name, column_name)
end
