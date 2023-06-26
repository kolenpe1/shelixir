al:
	rm -rf shelixir_*
	python3 -m shelixir -w 1.54 -l P222 P212121 -sfac Se -pref lala -find 10 -ntry 100 -s pse14.HKL  -Epar="-a1 -z -m3"
	python3 -m shelixir -w 0.98 -l C2 -pref phenix-mad -find 10 -ntry 100 -n gere_nat.sca -p gere_peak.sca -i gere_infl.sca -hr gere_hrem.sca --lrem gere_lrem.sca -Epar="-a1 -m3 -z"  -ss 30 70 10
	python3 -m shelixir -pref Ecko -mr smtetx5_46.1_edit02_refmac2.pdb -n smtetx5_scaled_P1_select09.hkl -seq AAA_Stenotrophomonas_maltophilia_WP_049406473_SELECTED.fasta.txt -Epar="-a1 -m3 -s0.45"
	python3 -m shelixir -pref Ecko2 -mr smtetx5_46.1_edit02_refmac2.pdb -n smtetx5_scaled_P1_select09.hkl -seq AAA_Stenotrophomonas_maltophilia_WP_049406473_SELECTED.fasta.txt -Epar="-a1 -m3 -s0.45" -ss 30 70 10
#	python3 gui.py



clean:
	rm -rf shelixir_*



eg:
	vim gui.py

help:
	python3 main.py -h

