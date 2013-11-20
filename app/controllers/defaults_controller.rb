class DefaultsController < ApplicationController
	def update
		@default = Default.find(params[:id])
		@default.update(default_params)

		flash[:notice] = "Default " + @default.table_name + " was changed successfully to: " + @default.record_id.to_s
		redirect_to :controller => 'admin', :action => @default.table_name.to_s
	end

	def default_params
      params.require(:default).permit(:table_name, :record_id)
    end
end
