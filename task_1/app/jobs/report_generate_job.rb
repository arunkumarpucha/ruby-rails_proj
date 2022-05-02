class ReportGenerateJob < ApplicationJob
    queue_as :default
  
    def perform(article_params)
      ExternalCall.run_complex_sql_query(article_params)
      Article.create(article_params)
    end
  end
  