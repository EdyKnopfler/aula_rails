class PessoasController < ApplicationController

    def edit
        @pessoa = Pessoa.find(params[:id])
    end

end
