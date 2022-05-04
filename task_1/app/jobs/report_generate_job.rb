class ReportGenerateJob < ApplicationJob
    queue_as :default
  
    def perform(article_params)
      prepared_params = ExternalCall.run_complex_sql_query(article_params)
      Article.create(prepared_params)
    end
  end
  