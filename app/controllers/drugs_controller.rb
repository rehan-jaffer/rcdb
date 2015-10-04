class DrugsController < ApplicationController

  private

    def switch_drugs_path(primary_name)
      return send("#{self.class.downcase}_path", primary_name)
    end

end
