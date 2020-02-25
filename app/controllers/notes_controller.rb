class NotesController < ApplicationController
    def index
        @habit = Habit.find_by_id(params[:habit])
        @notes = @habit.notes.all
        # @notes = Note.all
        render json: @notes
    end

    def show
        @note = Note.find(params[:id])
        render json: @note
    end

    def create
        @note = Note.new(note_params)
        @note.save
        render json: @note
    end

    def update
        @note = Note.find(params[:id])
        @note.update(note_params)
        render json: @note
    end 
    
    def destroy
        @note = Note.find(params[:id])
        @note.destroy
        render json: @note
    end

    private

    def note_params
        params.require(:note).permit(:content, :habit_id)
    end
end
