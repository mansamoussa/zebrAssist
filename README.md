# ZebrAssist 🚦     

**ZebrAssist** is a computer vision project that aims to help blind pedestrians safely cross the street.  
The system combines **zebra crossing localization**, **traffic light detection** and **traffic light classification** to decide whether it is safe to cross. The ultimate goal is to deploy this model on a **wearable device (e.g., smartphone or smart glasses)** that provides **voice guidance** to the user.  


## How It Works  

1. **YOLOv8 – Traffic Light Detection**  
   Detects traffic lights in the scene.  

2. **Swin Transformer – Traffic Light Classification**  
   Determines which light (Red, Yellow, or Green) is active.  

3. **Crosswalk Check + Decision System**  
   Detects if the pedestrian is standing in front of zebra lines and combines all model outputs to decide whether it is safe to cross.  


## Demo  

Preview of the system in action:  

![Demo](assets/MVI_Grenchen.gif)


## Project Structure  

- `1_Yolo_TrafficLight_Detector.ipynb` → Train YOLOv10 model for traffic light detection.  
- `2_SWIN_TrafficLight_Classifier.ipynb` → Train Swin Transformer (swin_tiny_patch4_window7_224) to classify traffic light states.  
- `3_DetectThenClassify_YOLO_SWIN.ipynb` → Integration pipeline with zebra crossing check and decision logic.  


## Setup & Installation  

Clone the repo:  
```bash
git clone https://github.com/yourusername/ZebrAssist.git
cd ZebrAssist
```

Install requirements:  
```bash
pip install -r requirements.txt
```

> ⚠️ **Dataset not included**:  
> - To reproduce results, please contact the author or use your own dataset.  


## Usage  

You can run the notebooks **locally** or on **Google Colab**:  

- **Local**:  
  ```bash
  jupyter notebook 3_DetectThenClassify_YOLO_SWIN.ipynb
  ```

- **Google Colab**:  
  Upload the notebooks and run directly in Colab (GPU recommended).  


## Future Directions  

- 🚀 Deploy on **mobile / wearable devices** (smartphone, smart glasses).  
- 🎙️ Add **real-time voice feedback** for blind pedestrians.


## Authors  

- Mouhamadou Thiam - [GitHub](https://github.com/mansamoussa) | [LinkedIn](https://www.linkedin.com/in/mouhamadou-thiam/) 
- Rafaella Miranda - [GitHub](https://github.com/rafinchen) | [LinkedIn](https://www.linkedin.com/in/rafaella-miranda-020a5a249/)
