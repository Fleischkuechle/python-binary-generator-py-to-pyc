Is_development:bool=False


Is_development:bool=False   



Is_development:bool=False    

               Is_development:bool=False



Is_development:bool=False


# ##### BEGIN LICENSE BLOCK #####
#   # Auto-Animation-Pro © 2023 by Volker Zimmermann is licensed under Attribution-NonCommercial-NoDerivatives 4.0 International 
#  Attribution-NonCommercial-NoDerivatives 4.0 International (CC BY-NC-ND 4.0) 
#
#  This work is licensed under the Creative Commons
#  Attribution-NonCommercial-NoDerivatives 4.0 International License. 
#
#  To view a copy of this license,
#  visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
#
# ##### END LICENSE BLOCK #####
# tutorial: https://www.youtube.com/@Umocap

bl_info = {
    "name": "Auto-Animation-Pro",
    "author": "U_mocap",
    "version": (0, 0, 1),
    "blender": (3, 50, 0),
    "location": "View3D > UI > Mesh Tab",
    "description": "Create motion capture animations with webcam or video .",
    "warning": "",
    "wiki_url": "",
    "category": "Animation",
}

import os
import sys

Is_development:bool=False
development_path:str=r"D:\02\05\05\Auto-Animation-pro"
def set_sys_Folders(is_development=False):
    """Geht durch die addon folders und macht sys.path.append fuer die unter folders.
    returns the so called parent_folder_path (the path where this file lives)"""
    parent_folder_path=None
    if Is_development:
        
        #parent_folder_path = "D:\\069\\10\\01"
       # parent_folder_path = r"D:\02\05\04\MotionBlend-Pro-Human-Motion-Capture"
        #parent_folder_path = r"D:\02\05\04\MotionBlend-Pro-Human-Motion-Capture"
        parent_folder_path = r"D:\02\05\05\Auto-Animation-pro"
        

        # Durchsuchen des aktuellen Verzeichnisses nach Unterverzeichnissen und Hinzufügen zum sys-Pfad
        for entry in os.scandir(parent_folder_path):
            if entry.is_dir():
                if entry not in sys.path:
                    sys.path.append(entry.path)
    else:
        current_file_path = os.path.dirname(os.path.abspath(__file__))
        #parent_folder = os.path.dirname(current_file_path) #C:\Users\Admin\AppData\Roaming\Blender Foundation\Blender\3.4\scripts\addons
        parent_folder_path = current_file_path
         # Durchsuchen des aktuellen Verzeichnisses nach Unterverzeichnissen und Hinzufügen zum sys-Pfad
        for entry in os.scandir(parent_folder_path):
            if entry.is_dir():
                if entry not in sys.path:
                    sys.path.append(entry.path)

    if parent_folder_path not in sys.path:
        sys.path.append(parent_folder_path)

    return parent_folder_path

set_sys_Folders(is_development=Is_development)

from Settings.My_MotionBlend_Pro_Settings_Processor import My_MotionBlend_Pro_Settings_Processor
#Is_development = My_MotionBlend_Pro_Settings_Processor.Is_development()
My_MotionBlend_Pro_Settings_Processor.save_property_change(is_development=Is_development)
My_MotionBlend_Pro_Settings_Processor.save_property_change(development_path=development_path)
#Import Panels
from Panels.AUTO_ANIMATE_PRO_PT_Auto_Animate_PRO_TOOL import AUTO_ANIMATE_PRO_PT_Auto_Animate_PRO_TOOL
#Import Opertators 
from Operators.OP_OT_run_motion_blend_pro import OP_OT_run_motion_blend_pro
from Operators.OP_OT_run_mo_resive import OP_OT_run_mo_resive
from Operators.OP_OT_unlock_all_bones import OP_OT_unlock_all_bones
from Operators.OP_OT_lock_all_bones import OP_OT_lock_all_bones
from Operators.OP_OT_Auto_Anim_Pro_highlight_in_outliner import OP_OT_Auto_Anim_Pro_highlight_in_outliner



# #Import Properties
# from Properties.My_MotionBlend_Pro_Properties import My_MotionBlend_Pro_Properties


#import pby stuff
#Achtung die BPY Imports bei benutzung von FAKE BPY in der venv immer zuletzt machen sonst 
#gibt es unter umstaenden probleme mit parten module fehlern....
from bpy import  utils #,types
#from bpy.props import PointerProperty
#Putting the classes into a list for registration _PT_ = Panel OT=Operator
classes = [#My_MotionBlend_Pro_Properties,
           AUTO_ANIMATE_PRO_PT_Auto_Animate_PRO_TOOL,
           OP_OT_run_motion_blend_pro,
           OP_OT_run_mo_resive,
           OP_OT_unlock_all_bones,
           OP_OT_lock_all_bones,
           OP_OT_Auto_Anim_Pro_highlight_in_outliner,
           ]

def register():
    '''Das Register ist fuer mein Verstaendnis das aeqivalent zu int methode '''
    #register  classes
    for cls in classes:
        utils.register_class(cls)
    #Neuen Typ der scene hinzu fuegen
    #types.Scene.My_MotionBlend_Pro_Properties = PointerProperty(type=My_MotionBlend_Pro_Properties) # her fuegen wir der Scene einen neuen Type hinzu
    #Drop_Image_Class.register()
def unregister():
    for cls in classes:
        utils.unregister_class(cls)
    #del types.Scene.My_MotionBlend_Pro_Properties
    #Drop_Image_Class.unregister()

        
if __name__ == "__main__":
    register()