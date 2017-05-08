class VillainsController < ApplicationController
   def new
      @villain = Villain.find_by(users_id: current_user)
      if @villain != nil
            redirect_to @villain
      else
         @villain = Villain.new
      end
   end
   def create
      @villain = Villain.new(villain_params)
      @villain.users_id = current_user.id
      if @villain.save
         redirect_to @villain
      else
         render 'new'
      end
   end
   def show
      @villain = Villain.find(params[:id])
   end
   def edit
      @villain = Villain.find(params[:id])
   end
   def update
      @villain = Villain.find(params[:id])
      
      if @villain.update(villain_params)
         redirect_to @villain
      else
         render 'edit'
      end
   end
   def destroy
      @villain = Villain.find(params[:id])
      @villain.destroy
      redirect_to 'welcome'
   end

   
   private
   def villain_params
       params.require(:villain).permit(:alias, :birthday, :gender,
       :rank, :cursed, :super_strength, :healing_factor, :invulnerability, :duplication,
       :dynamic_camouflage, :invisibility, :enhanced_awarness, :enhanced_durability, 
       :enhanced_marksmanship, :enhanced_reflexes, :enhanced_senses, :clairvoyance, 
       :energy_manipulation, :immortality, :mental_projection, :psychic, 
       :superhuman_intelligence, :time_travel, :telepathy, :teleportation, :searching_for)  
   end
   
end

