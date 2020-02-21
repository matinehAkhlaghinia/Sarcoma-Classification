# Sarcoma-Classification

One of the main methods used by pathologists in order to assess the stage and type
of cancers is by visual inspection of histopathology slide images. This is currently
performed by pathologists inspecting large regions of biological tissues which is
very labour intensive and error-prone. With the rise of precision medicine, the
complexity of cancer diagnosis has increased and as a result, there has been a
substantial increase in the pathologists' workload. Synovial Sarcoma is a type of
rare cancer that is sometimes misdiagnosed as malignant Solitary Fibrous Tumour.
This dissertation presents a framework to accurately and automatically classify
between Synovial Sarcoma and Solitary Fibrous Tumours. The method consists of
generating ground truth using k-means clustering and training a deep convolutional
neural network (CNN), Inception-v3, on whole slide images of Synovial Sarcoma
and Solitary Fibrous Tumours. The model classifies 95% of Synovial Sarcoma
tumour slides and 92% of Solitary Fibrous Tumour slides correctly. Moreover,
the model is evaluated on a noisy test set which includes artefacts and healthy
tissues. We discover that the model is robust to noise and it can also distinguish
between healthy and tumorous tissues despite not being trained on healthy tissues.
Following this, different visualisation methods are explored for CNNs in order to
interpret the model's understanding of the two cancer types. We discover that
the model is looking at unique architectural features in the images in order to
distinguish between Synovial Sarcoma and Solitary Fibrous Tumours.
