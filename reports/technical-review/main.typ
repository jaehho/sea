#import "conf.typ": ieee

#show: ieee.with(
  title: [Technical Review of Muscle Fatigue],
  abstract: [
    Muscle fatigue is a multifaceted decline in the ability of a muscle to produce force or power, and it arises from changes that occur at neural, muscular, and perceptual levels during sustained activity. This review summarizes the current understanding of muscle fatigue with emphasis on the distinction between performance fatigability and perceived fatigability and on the interaction of central and peripheral mechanisms. Surface electromyography (sEMG) is discussed as a non-invasive tool for monitoring fatigue, with specific focus on root-mean-square (RMS) amplitude and median frequency, which are among the most widely used EMG metrics. The review also discusses phenomenological and motor-unit-based models of fatigue and explains how they relate to EMG behavior. Limitations and practical considerations for EMG-based fatigue assessment are addressed, along with the importance of combining EMG with complementary experimental and modeling approaches to obtain a comprehensive understanding of fatigue and recovery.
  ],
  authors: (
    (
      name: "Jaeho Cho",
      department: [Electrical Engineering],
      organization: [The Cooper Union for the Advancement of Science and Art],
      location: [New York, USA],
      email: "jaeho.cho@cooper.edu",
    ),
  ),
  index-terms: (
    [Muscle fatigue],
    [Surface electromyography],
  ),
  bibliography: bibliography("refs.bib"),
  figure-supplement: [Fig.],
)
= Introduction
<introduction>
Muscle fatigue is usually defined as an exercise-induced reduction in the ability of a muscle or muscle group to produce force or power. @enoka2008fatigue @wan2017fatigue This reduction does not come from a single cause but rather from changes at many levels of the neuromuscular system, including the brain, spinal cord, motoneurons, neuromuscular junction, muscle fiber membrane, and the processes of excitation–contraction coupling inside the muscle fibers. @gandevia2001spinal @wan2017fatigue

Modern work on fatigue separates the concept into performance fatigability and perceived fatigability. @enoka2016translating @wan2017fatigue Performance fatigability refers to the measurable decline in performance, for example a drop in maximal voluntary contraction (MVC) or a reduction in power output at a given task, whereas perceived fatigability describes how hard, uncomfortable, or effortful the task feels to the person doing it, which depends on both physiological and psychological factors. These two aspects work together to determine whether someone continues a task, reduces effort, or stops altogether. @enoka2016translating

Because fatigue is multi-factorial, it is important to have methods that can track the changes in muscle and neural function that occur as a task continues. Surface electromyography is one of the most widely used methods for this purpose because it is non-invasive and can be applied in many experimental and practical settings. @cifrek2009semg In this review, the emphasis is on how sEMG can be used to quantify fatigue, what EMG measures such as RMS and median frequency mean physiologically, how they behave during a sustained contraction, and how they connect to muscle fatigue models at a more abstract level.


= Neurophysiological Concepts of Muscle Fatigue
<neurophysiological-concepts-of-muscle-fatigue>
== Performance fatigability and perceived fatigability
<performance-fatigability-and-perceived-fatigability>
Enoka and Duchateau argued that it is useful to divide fatigue into performance fatigability and perceived fatigability because these two aspects do not always change in the same way during a task. @enoka2008fatigue @enoka2016translating A person might maintain force for a period of time while perceived effort rises sharply, or force may decline even when the task is rated as only moderately hard, depending on the underlying mechanisms and context.

Performance fatigability is usually quantified using force or torque measurements, such as the drop in MVC before and after a fatiguing protocol, or the time it takes to reach task failure at a given relative intensity. @enoka2008fatigue @carroll2017recovery Perceived fatigability is commonly measured using rating scales, with the Borg rating of perceived exertion (RPE) scale being one of the most widely used and accepted. @borg1982rpe This scale provides a simple numerical rating that correlates with physiological variables, and it allows investigators to track how subjective effort changes during a task.

== Central and peripheral contributions
<central-and-peripheral-contributions>
Gandevia reviewed evidence showing that fatigue has both central and peripheral components. @gandevia2001spinal Central fatigue arises when the central nervous system, including cortical and spinal centers, can no longer provide the same level of voluntary drive to motoneurons. This can be detected by techniques such as twitch interpolation, where a superimposed electrical or magnetic stimulus applied during a maximal voluntary contraction produces additional force, indicating incomplete voluntary activation. @gandevia2001spinal @carroll2017recovery

Peripheral fatigue, by contrast, occurs in the muscle itself and is related to processes such as reduced sarcolemmal excitability, slowed conduction velocity, altered calcium handling in the sarcoplasmic reticulum, reduced sensitivity of the contractile apparatus to calcium, and accumulation of metabolites that interfere with cross-bridge cycling. @wan2017fatigue During a given task, central and peripheral components develop together, and their relative contributions depend on factors such as task intensity, duration, contraction type (isometric, concentric, eccentric), and the specific muscle or muscle group involved. @enoka2008fatigue @carroll2017recovery

= Surface EMG as a Tool for Quantifying Fatigue
<surface-emg-as-a-tool-for-quantifying-fatigue>
== Time-domain and frequency-domain markers
<time-domain-and-frequency-domain-markers>
Surface EMG records the electrical activity generated by muscle fibers during activation, and because it reflects the sum of many motor unit action potentials, its amplitude and frequency content provide indirect information about motor unit recruitment and firing behavior. @cifrek2009semg Among many possible EMG features, RMS amplitude and median frequency are the most traditional and widely studied markers of fatigue. @cifrek2009semg @nussbaum2008utility

During sustained isometric contractions at moderate to high intensity, a common pattern is that EMG amplitude increases over time while the power spectrum shifts toward lower frequencies. @cifrek2009semg The amplitude increase is usually attributed to increased recruitment of motor units, especially higher-threshold units with larger action potentials, and to increased firing rates, both of which increase the overall variance of the EMG signal. @cifrek2009semg The frequency shift is linked to slowing of muscle fiber conduction velocity and changes in the shape of motor unit action potentials as the muscle fatigues. @allison2002medianfreq

Allison and Fujiwara showed that the median frequency of the EMG spectrum decreases as muscle capacity is reduced, and that this decrease is associated with an increase in low-frequency band power and a decrease in high-frequency band power. @allison2002medianfreq Their results support the idea that simple band-power ratios can be used to track fatigue in some tasks and that the median frequency provides a convenient scalar summary of these spectral changes.

Nussbaum and Yassierli evaluated traditional EMG fatigue measures such as RMS, mean frequency, and median frequency, along with alternative measures such as fractal dimension, during low-to-moderate intensity isometric efforts. @nussbaum2008utility They reported that some non-traditional metrics may be more sensitive and reliable at lower intensities where classical measures sometimes show weak or inconsistent trends, which highlights the need to choose indices based on task demands and contraction level.

== Time–frequency and machine-learning approaches
<timefrequency-and-machine-learning-approaches>
In dynamic tasks, such as repetitive lifting or cyclic arm movements, EMG signals are strongly nonstationary because muscle length, joint angle, and contraction speed change throughout the movement, and the stationarity assumption underlying simple Fourier-based spectral analysis is not satisfied. @cifrek2009semg

To address this, Karthick and Ramakrishnan used time–frequency distributions based on modified B-distribution and related methods to derive features such as medium-to-low band power ratios that change in a predictable way as fatigue develops. @karthick2016mpr Later, they combined high-resolution time–frequency features with machine-learning classifiers to automatically detect fatigue states, demonstrating that this approach can capture complex patterns in EMG that are not obvious from single scalar descriptors like median frequency alone. @karthick2018ml

These developments show that while RMS and median frequency remain important and interpretable markers, more advanced analysis techniques are often needed to handle realistic, nonstationary tasks and to capture individual differences in fatigue behavior.

= Interpretation of a Representative EMG RMS and Median Frequency Figure
<interpretation-of-a-representative-emg-rms-and-median-frequency-figure>
Kattla and Lowery studied fatigue-related changes in electromyographic coherence between synergistic hand muscles and recorded EMG from the first dorsal interosseous (FDI) muscle during a sustained isometric finger flexion task. @kattla2010coherence @fig:emg-eval is an important figure taken from their work, which plots the normalized EMG RMS amplitude and the normalized median frequency of the beta-band power spectrum against the percentage of contraction time. The values are averaged across fifteen subjects, and both RMS and median frequency are expressed as a percentage of their initial values at the beginning of the contraction, with error bars showing the standard error. @kattla2010coherence

#figure(
  placement: auto,
  image("emg_eval.jpg"),
  caption: [EMG RMS amplitude and b power spectrum median frequency (mean ± standard error) plotted as a percentage of contraction time during the sustained fatiguing contraction of the FDI muscle. The data have been normalized with respect to the values at the beginning of the contraction and have been averaged over all 15 subjects.],
)<fig:emg-eval>

In this figure, EMG RMS increases gradually and consistently over the duration of the contraction, and by the end of the task it is clearly higher than the starting value. At the same time, the median frequency decreases steadily from its initial value to a lower value at the end of the contraction. The fact that these two curves move in opposite directions illustrates the dual behavior expected during fatigue: neural drive to the muscle increases, leading to higher amplitude, while muscle fiber conduction slows, leading to lower frequency content. @cifrek2009semg

Kattla and Lowery also reported that intermuscular coherence between FDI and flexor digitorum superficialis increased in certain frequency bands during and immediately after the fatiguing contraction, suggesting that common synaptic input to motor neuron pools becomes more prominent under fatigue. @kattla2010coherence Together with the RMS and median frequency trends, this supports the idea that both neural control strategies and muscle fiber properties adjust during a sustained task as fatigue develops.

= Modeling Muscle Fatigue
<modeling-muscle-fatigue>
== Phenomenological models
<phenomenological-models>
Phenomenological models describe fatigue in a relatively simple way using state variables that represent the overall fatigue level of a muscle or group of muscle fibers. Ding and colleagues proposed a predictive model in which muscle force is described by a combination of a force-generation model and a fatigue process that depends on activation history. @ding2000predictive In their work on electrically stimulated quadriceps, this model was able to reproduce force decline under different stimulation patterns by including parameters that control how quickly fatigue develops and recovers.

Liu and co-workers presented a dynamical model of muscle activation, fatigue, and recovery that divides the muscle into three conceptual pools: rested, active, and fatigued. @liu2002dynamical Activation moves units from rested to active, fatigue moves units from active to fatigued, and recovery moves units from fatigued back to rested. Model parameters determine how quickly each transition happens, and the overall force output is a function of the active pool. When this model is fitted to experimental handgrip data, it yields subject-specific estimates of fatigue and recovery rates. @liu2002dynamical

Although these models were originally expressed in terms of force and activation, they can be linked to EMG by assuming that EMG amplitude roughly reflects activation and that changes in spectral content, such as median frequency, reflect the state of the muscle fibers, so that combining these measures with model states may improve the interpretation of fatigue and recovery.

== Motor-unit-based models
<motor-unit-based-models>
Motor-unit-based models operate at a more detailed level by simulating individual motor units, each with its own twitch properties, recruitment threshold, and fatigue behavior. Potvin and Fuglevand introduced a model in which a pool of motor units is driven by an excitation signal, and each motor unit’s force capacity declines according to a fatigue function that depends on its level of activation over time. @potvin2017motorunit The collective output of the motor unit pool provides the total muscle force and its endurance time for a given task.

Because this type of model explicitly includes recruitment thresholds and firing patterns, it naturally links to EMG generation, since EMG can be modeled as the sum of motor unit action potentials convolved with spike trains. Although Potvin and Fuglevand mainly focused on force, their framework can be extended by assigning MUAP templates and conduction velocities to the units, which would allow simulated EMG signals and their RMS and median frequency trajectories to be compared directly to experimental data such as those from Kattla and Lowery. @potvin2017motorunit @kattla2010coherence

== Modeling recovery
<modeling-recovery>
Carroll and colleagues reviewed the time course of recovery for both central and peripheral fatigue after exercise and emphasized that recovery is not a single process but a combination of several processes that can unfold over seconds, minutes, or hours, depending on the type and intensity of the exercise. @carroll2017recovery Central activation can recover relatively quickly in some tasks, whereas peripheral impairments, such as low-frequency fatigue related to excitation–contraction coupling, may persist much longer. @carroll2017recovery

Models such as those proposed by Ding and Liu incorporate recovery by allowing state variables to return from fatigued to rested over time. @ding2000predictive @liu2002dynamical In principle, EMG measures can be used alongside force measurements to monitor this recovery process, for example by tracking how median frequency returns toward its baseline value and how EMG amplitude at a given absolute force changes as the muscle recovers, although interpreting these trends requires caution because changes in EMG can reflect both neural and muscular adjustments. @cifrek2009semg

= Critical Considerations and Limitations of EMG-Based Fatigue Analysis
<critical-considerations-and-limitations-of-emg-based-fatigue-analysis>
Even though RMS and median frequency are widely used and generally useful, they are not perfect and must be interpreted carefully. First, EMG amplitude and spectral content are influenced by factors unrelated to fatigue, such as electrode placement, orientation relative to muscle fibers, skin impedance, subcutaneous fat thickness, cross-talk from nearby muscles, and changes in muscle length or joint angle. @cifrek2009semg These factors can change over the course of a task and may themselves introduce trends that can be mistaken for fatigue if not controlled.

Second, at low contraction levels, median frequency and other spectral measures may show little or inconsistent change, which is why Nussbaum and Yassierli explored alternative measures and found that some non-linear and alternative indices can outperform traditional measures under these conditions. @nussbaum2008utility This suggests that different tasks may require different EMG features to detect fatigue reliably.

Third, dynamic contractions introduce additional complexity because the EMG signal is highly nonstationary, and simple Fourier-based metrics like median frequency may not capture fatigue-related changes that are localized in time within certain phases of the movement. @cifrek2009semg Time–frequency and cyclostationary methods can address this by providing time-resolved spectral information, but they require more complex analysis and careful validation, as demonstrated in the work by Karthick and co-workers. @karthick2016mpr @karthick2018ml

Fourth, EMG mainly reflects activity at the level of the muscle fibers and motoneuron pool, and therefore gives only indirect information about supraspinal contributions to fatigue. If the goal is to separate cortical from spinal and peripheral mechanisms, EMG must be combined with other techniques such as transcranial magnetic stimulation, EEG, or near-infrared spectroscopy, as indicated by work on central fatigue and recovery. @gandevia2001spinal @carroll2017recovery

// = Conclusion
// <conclusion>
// Muscle fatigue is a complex state that emerges from changes at multiple levels of the neuromuscular system and that affects both the capacity to produce force or power and the way effort is perceived. Surface EMG provides a practical and widely used method to monitor how the neuromuscular system responds to fatigue, and RMS amplitude and median frequency are two fundamental markers in this context.

// Phenomenological and motor-unit-based models of fatigue provide a framework for interpreting EMG trends in terms of underlying mechanisms, for predicting force decline and recovery under different loading conditions, and for designing interventions to manage fatigue in both clinical and applied settings. @ding2000predictive @liu2002dynamical @potvin2017motorunit @carroll2017recovery At the same time, limitations related to signal quality, task dependency, and central versus peripheral contributions mean that EMG-based fatigue assessment should be combined with other measures whenever possible. As time–frequency analysis methods, machine learning techniques, and multi-scale models continue to develop, it is likely that future approaches to muscle fatigue will rely on integrated, multimodal frameworks that make use of EMG in combination with mechanical, perceptual, and neural data to give a more complete and individualized picture of fatigue and recovery.
