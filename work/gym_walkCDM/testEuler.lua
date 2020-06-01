require("config")

package.projectPath='../Samples/classification/'
package.path=package.path..";../Samples/classification/lua/?.lua" --;"..package.path

require("module")
require("subRoutines/Timeline")
function alignAngles(x)
	local delta=0
	local y=x:copy()
	for i=0, x:size() -2 do
		y:set(i, x(i)+delta)
		if x(i)<-math.pi*0.5  and x(i+1)>math.pi*0.5 then
			-- negative clip
			delta=delta-math.pi*2
		elseif x(i)>math.pi*0.5  and x(i+1)<-math.pi*0.5 then
			delta=delta+math.pi*2
		end
	end
	local i=x:size()-1
	y:set(i, x(i)+delta)

	if y:avg()<-math.pi then
		y:radd(2*math.pi)
	end
	if y:avg()>math.pi then
		y:rsub(2*math.pi)
	end
	x:assign(y)

end
function ctor()
	mEventReceiver=EVR()
	mTimeline=Timeline("Timeline", 10000)

	z=CT.linspace(0, math.rad(360), 100)
	local nf=100
	input=vector3N(nf)
	input:z():assign(z)

	math.changeChartPrecision(30) -- height of a panel
	RE.motionPanel():scrollPanel():addPanel(z)

	local q=quater()
	out=vector3N(nf)

	math.randomseed(0)
	local _x=0
	local _y=0
	for i=0, nf-1 do
		_x=_x+(math.random()-0.5)*0.1
		_y=_y+(math.random()-0.5)*0.1

		input(i).x=_x
		input(i).y=_y
		q:setRotation("YZX", vector3(_x, _y, z(i)))
		q:getRotation("YZX", out(i))
	end
	RE.motionPanel():scrollPanel():addPanel(out:x())
	RE.motionPanel():scrollPanel():addPanel(out:y())
	RE.motionPanel():scrollPanel():addPanel(out:z())


	jumps=vector3N(jumpsQuat[1]:rows())
	for i=0, jumps:rows()-1 do
		local q=jumpsQuat[1]:row(i):toQuater()
		q:getRotation("YZX", jumps(i))
	end
	alignAngles(jumps:x())
	alignAngles(jumps:y())
	alignAngles(jumps:z())
	RE.motionPanel():scrollPanel():addPanel(jumps:x())
	RE.motionPanel():scrollPanel():addPanel(jumps:y())
	RE.motionPanel():scrollPanel():addPanel(jumps:z())

end
function dtor()
	mTimeline:dtor() mTimeline=nil
end
function handleRendererEvent()
	return 0
end
function frameMove() 
	return 0
end
function onCallback(w, id)
end
function EVR:onFrameChanged(win, iframe)

	local q=quater()
	if iframe<100 then
		q:setRotation("YZX", input(iframe))
		dbg.draw("Axes", transf(q, vector3(0,0.1,0)), 'lref', 100)
		q:setRotation("YZX", out(iframe))
		dbg.draw("Axes", transf(q, vector3(0.2,0.1,0)), 'out', 100)
	end

	if iframe<jumps:size() then
		q:setRotation("YZX", jumps(iframe))
		dbg.draw("Axes", transf(q, vector3(0.5,0.1,0)), 'lref2', 100)

		q:assign(jumpsQuat[1]:row(iframe):toQuater())
		dbg.draw("Axes", transf(q, vector3(0.7,0.1,0)), 'out2', 100)
	end

end
jumpsQuat=util.convertFromLuaNativeTable(
{
    {
        "__userdata", "matrixn", {
            {
                0.99915748189144, 0.0024920828586471, -0.040963577698306, 0.00031812818813954, 
            }, {
                0.99921094961047, 0.0041379781491608, -0.03948918808062, -0.00097945909465558, 
            }, {
                0.99926533130371, 0.0080475186092422, -0.037411504547528, -0.0021010535932646, 
            }, {
                0.99928422165341, 0.013114446103408, -0.035341219946943, -0.0031707776016389, 
            }, {
                0.99926907666725, 0.018234140183258, -0.033351987230536, -0.0040587554917065, 
            }, {
                0.99922083297272, 0.023246041304735, -0.03151909752581, -0.0048882520516694, 
            }, {
                0.99914780284532, 0.027905863954531, -0.029896388822149, -0.0055800324124228, 
            }, {
                0.99905039216665, 0.032458221847144, -0.028433357775903, -0.0060267662789277, 
            }, {
                0.99893351058455, 0.036836428922064, -0.02707983389989, -0.0064499249179697, 
            }, {
                0.99878310911877, 0.041476210149191, -0.025792709424286, -0.0068382067287472, 
            }, {
                0.99861045334958, 0.046064402898111, -0.024603504279382, -0.0070640515112523, 
            }, {
                0.99839110269989, 0.051150808913086, -0.023368449676639, -0.007260603070708, 
            }, {
                0.99811789351451, 0.056738984712646, -0.022076178463067, -0.0073485103526884, 
            }, {
                0.99774645565296, 0.063305168882496, -0.020937112370826, -0.0074902036208665, 
            }, {
                0.99725523931184, 0.07084153704325, -0.020127770019601, -0.007637877222661, 
            }, {
                0.99660081791739, 0.079565844336587, -0.019859181469997, -0.0078548744575099, 
            }, {
                0.9957132674901, 0.089862203480539, -0.020290011897379, -0.0082576477891728, 
            }, {
                0.99457904151523, 0.1013312764823, -0.021606657588649, -0.0088122036379516, 
            }, {
                0.9930817202052, 0.11459930602328, -0.023776738610991, -0.0095059325837465, 
            }, {
                0.99108491320266, 0.13018343470594, -0.026419079238557, -0.010246970402471, 
            }, {
                0.98847326531826, 0.14818022362791, -0.028994072572309, -0.011071080901196, 
            }, {
                0.98496629375661, 0.16947232066446, -0.031221930581935, -0.012071608952738, 
            }, {
                0.98017437347728, 0.19497106331314, -0.032619980527849, -0.013432010993393, 
            }, {
                0.97376959462238, 0.22457702474758, -0.033111612452768, -0.015542125506569, 
            }, {
                0.96560079115785, 0.2573237383628, -0.032651910402054, -0.01826084711674, 
            }, {
                0.95625761747401, 0.29006429923153, -0.03183993827083, -0.020500967420334, 
            }, {
                0.94555763702647, 0.32330550456635, -0.030151533103544, -0.02202704768077, 
            }, {
                0.93551149917017, 0.35125178725646, -0.030101419930568, -0.023115392873428, 
            }, {
                0.92727103955794, 0.37246025415651, -0.03124479691787, -0.021576397668962, 
            }, {
                0.92234537193133, 0.38437220436383, -0.034670017022526, -0.018303368788494, 
            }, {
                0.92028534721522, 0.38898590671484, -0.039627348176139, -0.013946947864254, 
            }, {
                0.91922113345281, 0.39101186497943, -0.045333942413046, -0.0093307515415706, 
            }, {
                0.91709180133947, 0.39536047341481, -0.051099239502339, -0.0046466869303686, 
            }, {
                0.91176754249101, 0.4066556521556, -0.05754150440189, 0.0003229566140543, 
            }, {
                0.90192864791702, 0.42728329564429, -0.062704455893776, 0.0046744562255335, 
            }, {
                0.88626001326415, 0.45856830132474, -0.065042063163265, 0.0052755974674364, 
            }, {
                0.86307380568123, 0.50077259755139, -0.065610787399648, 0.0050632070225598, 
            }, {
                0.83361884980591, 0.54856466916327, -0.064424141343502, 0.0024386484389856, 
            }, {
                0.79783719710714, 0.59940529053715, -0.064568571196522, 6.4822263765251e-05, 
            }, {
                0.75937001732794, 0.64741107904009, -0.064861265227062, -0.0030145965996272, 
            }, {
                0.71933649502707, 0.69105403832004, -0.070061361992073, -0.0095251561430253, 
            }, {
                0.70482009407405, 0.70504773749097, -0.075829487500903, -0.019652268919051, 
            }, {
                0.68519572436825, 0.72280348461358, -0.083503730466833, -0.033001044469192, 
            }, {
                0.65599620164457, 0.74897141494237, -0.081853341731286, -0.044842317898767, 
            }, {
                0.61601489933705, 0.78179562536337, -0.078930400303346, -0.055598883670539, 
            }, {
                0.55599152560264, 0.82606695617314, -0.070733420002349, -0.059021950761331, 
            }, {
                0.4929331888665, 0.86541843529704, -0.065813715982516, -0.061125755214147, 
            }, {
                0.41201141821438, 0.90682127858135, -0.060945779504233, -0.064864257751646, 
            }, {
                0.32404226906174, 0.94226498901213, -0.053403798875894, -0.065431892903313, 
            }, {
                0.23024796946796, 0.96994472967598, -0.044844166357267, -0.064669116844111, 
            }, {
                0.13243519711717, 0.98860837278585, -0.03528457579152, -0.062204521808758, 
            }, {
                0.034513677557624, 0.9975708320525, -0.025223274437732, -0.055000250237291, 
            }, {
                -0.065368224693762, 0.99661139535575, -0.015487817517691, -0.047464190248875, 
            }, {
                -0.1646346923586, 0.98548886933141, -0.0062614862660585, -0.040839934936596, 
            }, {
                -0.26087265356994, 0.96485268976281, 0.0018292052982071, -0.031644899823101, 
            }, {
                -0.35144261035398, 0.93587963056678, 0.0083100781150839, -0.023416902431492, 
            }, {
                -0.43750719264539, 0.89894510571831, 0.014383444880145, -0.016681420863781, 
            }, {
                -0.51727878772645, 0.85551192101712, 0.019890113889872, -0.011242425686015, 
            }, {
                -0.5872283416344, 0.8090443125223, 0.023590675350282, -0.0073249705221089, 
            }, {
                0.65322422114272, -0.7566391266931, -0.027993310199751, 0.0034239529281111, 
            }, {
                0.71332798192322, -0.70006583616929, -0.032715966170954, 0.00082510086721141, 
            }, {
                0.76885681647748, -0.63833149837974, -0.03728174263675, -0.0014715972143924, 
            }, {
                0.81811172161111, -0.57357752729708, -0.041168980020731, -0.0026732426618612, 
            }, {
                0.86173638193334, -0.50537517751851, -0.044691291804471, -0.0030044030045602, 
            }, {
                0.86464048149329, -0.50038653840056, -0.0447588175063, 0.0026073369554163, 
            }, {
                0.89437928149274, -0.44570759332977, -0.036418982902421, 0.010202929435364, 
            }, {
                0.95765241327946, -0.28489829737815, -0.041486552320891, 0.0036988467903649, 
            }, {
                0.98968539585822, -0.13856463172132, -0.036368352941799, -5.4453630492988e-05, 
            }, {
                0.99504773467306, -0.095795015931831, -0.026231021112457, 0.003905659487207, 
            }, {
                0.99865410163193, -0.044060404816546, -0.026882345896238, 0.0050995588285042, 
            }, {
                0.99918880451033, -0.026337090486233, -0.029867292945016, 0.0060029507811312, 
            }, {
                0.9988965438639, -0.035900892460317, -0.02853178657303, 0.010136948863312, 
            }, {
                0.99840946290093, -0.049917925425594, -0.022301971621049, 0.013761074554776, 
            }, {
                0.9976139489866, -0.066002931725609, -0.012900569618631, 0.015607597332964, 
            }, {
                0.99669294923707, -0.079300479989431, -0.0062331607876215, 0.016605617156775, 
            }, {
                0.99611379170345, -0.086425462121705, -0.0010502764758464, 0.016936658305181, 
            }, {
                0.99600330618074, -0.087648187209723, 0.0015620215414257, 0.017110506847632, 
            }, {
                0.99623154690296, -0.085018324906147, 0.0022390147204686, 0.017016938578304, 
            }, {
                0.99579360823132, -0.090029443059805, 0.00064336610535073, 0.01701103371449, 
            }, {
                0.99536234173486, -0.094530540582856, -0.0041488795193101, 0.017337022580063, 
            }, {
                0.9956771394495, -0.090907879248491, -0.0094852392589325, 0.01651731529032, 
            }, {
                0.99616221261604, -0.084905606412358, -0.015187419246163, 0.014873683212419, 
            }, {
                0.99670344153267, -0.077414544990015, -0.020271945688867, 0.013352381020372, 
            }, {
                0.99725842742682, -0.069110027725064, -0.024355673199135, 0.010306996508917, 
            }, {
                0.99769726008546, -0.061003758407936, -0.028392531472093, 0.0085195560136237, 
            }, {
                0.99800378145719, -0.053904117804728, -0.032119793653071, 0.0071496249217853, 
            }, {
                0.99822408693573, -0.047534259287599, -0.035422700016191, 0.005865047218664, 
            }, {
                0.99836193637048, -0.041989252761025, -0.038561632834562, 0.0048318870313402, 
            }, {
                0.99843814294469, -0.037317770385706, -0.041363236978243, 0.0042120485839762, 
            }, {
                0.99846415397266, -0.033390044608149, -0.044039064925637, 0.0038728430395594, 
            }, {
                0.99845140335675, -0.030157711522389, -0.046595739160535, 0.0037609390777614, 
            }, {
                0.99840692786944, -0.027659549783827, -0.049029829510231, 0.0038251151954438, 
            }, {
                0.99834657116343, -0.025625481201029, -0.051303874937186, 0.0039205836121575, 
            }, {
                0.99829531950929, -0.023418844890672, -0.053318371700288, 0.0038940966927433, 
            }, {
                0.9982789721569, -0.020816131444565, -0.054705209983003, 0.0036224883369881, 
            }, {
                0.99830402744066, -0.017521715813237, -0.055433111482371, 0.0030378318087526, 
            }, {
                0.99838337410366, -0.013180887156843, -0.055250762249522, 0.0020629585542811, 
            }, {
                0.9984985788068, -0.0081552609468794, -0.054161822943249, 0.00075945714525362, 
            }, {
                0.99862699516505, -0.0031786114542224, -0.052283443093316, -0.00068009936771611, 
            }, {
                0.99874413479499, 0.0010118506383189, -0.05005509073398, -0.0019019102261375, 
            }, {
                0.99884875937941, 0.0038457031095723, -0.047740477294214, -0.0026857552990857, 
            }, {
                0.99895557471673, 0.0045787747487492, -0.04537720304394, -0.0027756094956106, 
            }, {
                0.99908196109249, 0.0045160232199318, -0.042448318620935, -0.0036028877456868, 
            }, 
        }, 
    }, 
}
)
