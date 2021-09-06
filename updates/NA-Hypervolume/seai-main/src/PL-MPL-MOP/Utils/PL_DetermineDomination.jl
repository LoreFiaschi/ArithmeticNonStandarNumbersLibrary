function PL_DetermineDomination!(pop, minimization)

    nPop=length(pop)
	numLevels = pop[1].cost.numLevels;
	tmp_pop = pop;
    
    if :IsDominated in fieldnames(typeof(pop[1]))

        for i=1:nPop
            pop[i].IsDominated=false
        end
        
		for l = 1:numLevels
			for i=1:nPop
				for j=(i+1):nPop
					if PL_Dominates(tmp_pop[i].cost[l],tmp_pop[j].cost[l], minimization)
						tmp_pop[j].IsDominated=true
						
					elseif PL_Dominates(tmp_pop[j].cost[l],tmp_pop[i].cost[i], minimization)
						tmp_pop[i].IsDominated=true   
					end
				end
			end
			tmp_pop = tmp_pop[map(x->x.IsDominated==false, tmp_pop)];
			nPop = length(tmp_pop);
		end
    else
    
        for i=1:nPop
            pop[i].dominated=false
        end
        
		for l = 1:numLevels
			for i=1:nPop
				for j=(i+1):nPop
					if PL_Dominates(tmp_pop[i].cost[l],tmp_pop[j].cost[l], minimization)
						tmp_pop[j].dominated=true
						
					elseif PL_Dominates(tmp_pop[j].cost[l],tmp_pop[i].cost[l], minimization)
						tmp_pop[i].dominated=true   
					end
				end
			end
			tmp_pop = tmp_pop[map(x->x.dominated==false, tmp_pop)];
			nPop = length(tmp_pop);
		end
    end
end