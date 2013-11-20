class DefaultsController < ApplicationController
	def update
		@default = Default.find(params[:id])
		@default.update(default_params)
		#redirect_to( ("admin/" + @default.table_name.to_s), notice: 'Default was successfully updated')
		redirect_to :controller => 'admin', :action => 'article'
	end

	def default_params
      params.require(:default).permit(:table_name, :record_id)
    end
end
