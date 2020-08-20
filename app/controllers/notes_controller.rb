class NotesController < ApplicationController

    def create
        note = Note.create(note_params)
        render json: note
    end

    def destroy
        note=Note.find(params[:id])
        note.destroy
        render json: note
    end

    private

    def note_params
        params.require(:note).permit(:user_id, :text, :importance, :color, :highlight)
    end

end
